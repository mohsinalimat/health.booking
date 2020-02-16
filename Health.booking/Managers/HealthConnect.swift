//  HealthConnect.swift
//  Health.booking
//
//  Created by Shak4l on 15/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import Foundation
import HealthKit

class HealthConnect {
    
    private lazy var healthStore = HKHealthStore()
    
    enum HealthError: Error, LocalizedError {
        case notAvailableForDevice
        var localizedDescription: String {
            "This Health app is not available for this device"
        }
    }
}

// MARK: - Public methods
extension HealthConnect {
    
    func authorize(completion: @escaping ((Bool, Error?) -> Void)) {
        // 1. Check if HealthStore is available
        guard HKHealthStore.isHealthDataAvailable() else {
            completion(false, HealthError.notAvailableForDevice)
            return
        }
        
        // 2. Prepare the data types
        let readTypes: Set<HKObjectType?> = [
            HKObjectType.characteristicType(forIdentifier: .dateOfBirth),
            HKObjectType.characteristicType(forIdentifier: .biologicalSex),
            HKObjectType.quantityType(forIdentifier: .bodyMass),
            HKObjectType.quantityType(forIdentifier: .height),
            HKObjectType.characteristicType(forIdentifier: .bloodType)
        ]
        
        let availableTypes = Set(readTypes.compactMap({ $0 }))
        
        // 3. Request data
        healthStore.requestAuthorization(toShare: nil,
                                         read: availableTypes,
                                         completion: completion)
    }
}

// MARK: - Public Objects
extension HealthConnect {
    
    var sex: HKBiologicalSex? {
        try? healthStore.biologicalSex().biologicalSex
    }
    
    func getAge() -> Int? {
        guard
            let birthdayComponenet = try? healthStore.dateOfBirthComponents(),
            let birthdayDate = birthdayComponenet.date
            else { return nil }
        
        let today = Date()
        let calendar = Calendar.current
        let componentes = calendar.dateComponents([.year],
                                                  from: birthdayDate, to: today)
        return componentes.year
    }
    
    var bloodType: HKBloodType? {
        try? healthStore.bloodType().bloodType
    }
    
    func weight(for unit: UnitSystem,  completion: @escaping ((Double?) -> Void)) {
        loadSample(ofType: .bodyMass) { (quantity) in
            let weight = quantity?.doubleValue(for: unit.hkWeightUnit)
            completion(weight)
        }
    }
    
    func height(for unit: UnitSystem, completion: @escaping ((Double?) -> Void)) {
        loadSample(ofType: .height) { (quantity) in
           let height = quantity?.doubleValue(for: unit.hkHeightUnit)
            completion(height)
        }
    }
    
    func getUnitSystem(completion: @escaping ((UnitSystem) -> Void)) {
        getPreferedUnits { (hkUnit) in
            guard let unit = hkUnit else {
                completion(.metric)
                return
            }
            let converetedUnit = HKUnit.massFormatterUnit(from: unit)
            switch converetedUnit {
            case .ounce, .stone, .pound:
                completion(.imperial)
            default:
                completion(.metric)
            }
        }
    }
}

// MARK: - Private Methods
extension HealthConnect {
    
    private func getSample(for type: HKSampleType,
                           completion: @escaping (HKQuantitySample?, Error?) -> ()) {
        let mostRecentPredecites = HKQuery.predicateForSamples(withStart: Date.distantPast,
                                                               end: Date(),
                                                               options: .strictEndDate)
        
        let sortDescriptor = NSSortDescriptor(key: HKSampleSortIdentifierStartDate,
                                              ascending: false)
        
        let sampleQuery = HKSampleQuery(sampleType: type,
                                        predicate: mostRecentPredecites,
                                        limit: 1,
                                        sortDescriptors: [sortDescriptor]) { (query, samples, error) in
                                            guard let mostRecentSample = samples?.first as? HKQuantitySample else {
                                                completion(nil, error)
                                                return
                                            }
                                            completion(mostRecentSample, nil)
        }
        healthStore.execute(sampleQuery)
    }
    
    private func loadSample(ofType type: HKQuantityTypeIdentifier,_ completion: @escaping ((HKQuantity?) -> ())) {
        guard let quantityType = HKSampleType.quantityType(forIdentifier: type) else {
            completion(nil)
            return
        }
        
        getSample(for: quantityType) { (sample, err) in
            guard err == nil else {
                completion(nil)
                print("Error while fetching sample for type: \(quantityType.description)")
                print(err!.localizedDescription)
                return
            }
            
            let quantity = sample?.quantity
            completion(quantity)
        }
    }
    
    private func getPreferedUnits(_ completion: @escaping ((HKUnit?) -> ())) {
        guard let quantityType = HKSampleType.quantityType(forIdentifier: .bodyMass) else {
            completion(nil)
            return
        }
        
        healthStore.preferredUnits(for: [quantityType]) { (unitDict, err) in
            guard err == nil else { completion(nil); return }
            completion(unitDict[quantityType])
        }
    }
}
