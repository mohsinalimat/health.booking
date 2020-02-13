//  AWSClient.swift
//  Health.booking
//
//  Created by Shak4l on 13/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import Foundation
import AWSAppSync

class AWSClient {
    
    var appSync: AWSAppSyncClient? {
        didSet {
            appSync?.apolloClient?.cacheKeyForObject = { $0["id"] }
        }
    }
    
    static let shared = AWSClient()
    private init() { }
    
    enum AWSError: Error  {
        case noData
        case backendError(err: Error)
    }
}
// MARK: - AWSError: LocalizedError
extension AWSClient.AWSError: LocalizedError {
    var localizedDescription: String {
        switch self {
        case .noData:
            return "No data found for query"
        case .backendError(let err):
            return err.localizedDescription
        }
    }
}

// MARK: - Methods
extension AWSClient {
    
    func query<T: GraphQLQuery>(_ graph: T,
                                completion: @escaping (Swift.Result<T.Data, AWSError>) -> Void) {
        appSync?.fetch(query: graph,
                       cachePolicy: .fetchIgnoringCacheData,
                       queue: .global(),
                       resultHandler: { (result, error) in
                        
                        guard error == nil else {
                            completion(.failure(.backendError(err: error!)))
                            return
                        }
                        
                        guard result?.errors == nil else {
                            let errors = result?.errors
                            errors?.forEach({print($0.localizedDescription)})
                            completion(.failure(.backendError(err: errors![0])))
                            return
                        }
                        
                        guard let queryData = result?.data else {
                            completion(.failure(.noData))
                            return
                        }
                        
                        completion(.success(queryData))
        })
    }
}
