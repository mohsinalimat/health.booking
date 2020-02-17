//  SchedulePreviewController.swift
//  Health.booking
//
//  Created by Shak4l on 17/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit

class SchedulePreviewController: UIViewController {
    
    // - IBOutlet
    // Header
//    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var acceptButton: UIButton!
    // When
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    // Note
    @IBOutlet weak var noteLabel: UILabel!
    // Medical record
    @IBOutlet weak var unitSystemLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var sexLabel: UILabel!
    @IBOutlet weak var bloodTypeLabel: UILabel!
    
    // - Data
    var appointment: Appointment!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Setup
        title = appointment.ownerName
        statusLabel.text = appointment.status.rawValue.capitalized
        acceptButton.isEnabled = appointment.status == .pending
        dateLabel.text = appointment.date
        timeLabel.text = appointment.time
        noteLabel.text = appointment.note
        // Fetch health data
        let healthQuery = GetHealthInfoQuery(id: appointment.healthId)
        AWSClient.shared.query(healthQuery) { (result) in
            
            switch result {
            case .success(let healthData):
                guard let healthInfo = healthData.getHealthInfo else { return }
                DispatchQueue.main.async {
                    self.unitSystemLabel.text = healthInfo.system
                    self.weightLabel.text = String(healthInfo.weight)
                    self.heightLabel.text = String(healthInfo.height)
                    self.ageLabel.text = String(healthInfo.age)
                    self.sexLabel.text = healthInfo.sex
                    self.bloodTypeLabel.text = healthInfo.bloodType
                }
            case .failure(let error):
                print("error while fetching health info")
                print(error.localizedDescription)
            }
        }
    }
    
    @IBAction func onAccept(_ sender: Any) {
        var input = UpdateAppointmentInput(id: appointment.id)
        input.status = Appointment.Status.upcoming.rawValue
        let mutation = UpdateAppointmentMutation(input: input)
        
        AWSClient.shared.mutate(mutation) { (error) in
            DispatchQueue.main.async {
                if error != nil {
                    self.showAlert(title: "Failure",
                                   message: "Something wen't wrong; please try again")
                    return
                }
                self.showAlert(title: "Success",
                               message: "You have accepted the appointment")
            }
        }
    }
}
