//  AppointmentDetailController.swift
//  Health.booking
//
//  Created by Shak4l on 14/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit

class AppointmentDetailController: UIViewController {
    
    // - IBOutlets
    @IBOutlet weak var titleHolder: UILabel!
    @IBOutlet weak var statusHolder: UILabel!
    @IBOutlet weak var cancelButton: UIButton!
    
    @IBOutlet weak var hospitalNameLabel: UILabel!
    @IBOutlet weak var hospitalLocationLabel: UILabel!
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var noteTextView: UITextView!
    
    @IBOutlet weak var abortButton: UIButton!
    
    // - Data
    var appointment: Appointment!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleHolder.text = appointment.doctorName
        statusHolder.text = appointment.doctorSpecialty
        noteTextView.text = appointment.note
        noteTextView.textContainerInset = .zero
        noteTextView.textContainer.lineFragmentPadding = 0
        hospitalNameLabel.text = appointment.hospitalName
        hospitalLocationLabel.text = appointment.hospitalLocation
        dateLabel.text = appointment.date
        timeLabel.text = appointment.time
        abortButton.isEnabled = appointment.status == .upcoming
    }
    
    @IBAction func onAbort(_ sender: UIButton) {
        var input = UpdateAppointmentInput(id: appointment.id)
        input.status = Appointment.Status.aborted.rawValue
        let mutation = UpdateAppointmentMutation(input: input)
        AWSClient.shared.mutate(mutation) { (error) in
            DispatchQueue.main.async {
                guard error == nil else {
                    self.showAlert(title: "Failed",
                                   message: "Couldn't abort; please try again")
                    return
                }
                self.showAlert(title: "Success",
                               message: "The appointment was canceled")
            }
        }
    }
}

