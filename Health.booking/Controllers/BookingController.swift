//  BookingController.swift
//  Health.booking
//
//  Created by Shak4l on 16/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit

class BookingController: UIViewController {
    
    // - IBOutlet
    @IBOutlet weak var doctorField: UITextField!
    @IBOutlet weak var hospitalLabel: UILabel!
    @IBOutlet weak var dateField: UITextField!
    @IBOutlet weak var noteTextView: UITextView!
    @IBOutlet weak var topStackConstraint: NSLayoutConstraint!
    @IBOutlet weak var bottomStackConstraint: NSLayoutConstraint!
    @IBOutlet weak var submitActivityIndicator: UIActivityIndicatorView!
    
    // - Fields
    private var generalManager = GeneralManager.shared
    private var manager = BookingManager.default
    private var constraintOffset: CGFloat = 32
    
    // - Delegate
    private lazy var doctorPickerProtocol: UIPickerDoctorProtocol = {
        UIPickerDoctorProtocol(data: generalManager.doctors ?? [], delegate: self)
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        noteTextView.layer.borderColor = UIColor.lightGray.cgColor
        noteTextView.layer.borderWidth = 0.5
        noteTextView.layer.cornerRadius = 6
        noteTextView.delegate = self
        noteTextView.setToolbarAccessoryView(buttonTitle: "Done",
                                             target: self,
                                             action: #selector(closeKeyboard))
        
        dateField.setDatePickerInputView()
        dateField.delegate = self
        dateField.setToolbarAccessoryView(buttonTitle: "Done",
                                          target: self,
                                          withAction: #selector(closeKeyboard))
        
        doctorField.setPickerInputView(doctorPickerProtocol)
        doctorField.setToolbarAccessoryView(buttonTitle: "Done",
                                            target: self,
                                            withAction: #selector(closeKeyboard))
    }
    
    @objc func closeKeyboard(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func onSubmit(_ sender: UIButton) {
        submitActivityIndicator.startAnimating()
        sender.isEnabled = false
        manager.submit { (message) in
            DispatchQueue.main.async {
                self.showAlert(title: message)
                sender.isEnabled = true
                self.submitActivityIndicator.stopAnimating()
            }
        }
    }
}

// MARK: - UIPickerDoctorDelegate
extension BookingController: UIPickerDoctorDelegate {
    func pickerView(_ pickerView: UIPickerView, didSelect doctor: Doctor) {
        manager.appointment.doctorName = doctor.name
        manager.appointment.doctorId = doctor.id
        manager.appointment.doctorSpecialty = doctor.specialty
        doctorField.text = doctor.name
        let hospital = generalManager.hospitals?.first(where: { $0.id == doctor.hospitalId })
        manager.appointment.hospitalName = hospital?.name ?? ""
        manager.appointment.hospitalLocation = hospital?.location ?? ""
        hospitalLabel.text = hospital?.name
    }
}

// MARK: - UITextFieldDelegate
extension BookingController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        if textField  == dateField {
            let datePicker = textField.inputView as? UIDatePicker
            guard let date = datePicker?.date else {
                return
            }
            let formatter = DateFormatter()
            formatter.dateFormat = "yyyy-MM-dd'T'HH:mm"
            manager.appointment.date = formatter.string(from: date)
            formatter.dateFormat = "E, d MMM yyyy 'at' HH:mm"
            dateField.text = formatter.string(from: date)
        }
    }
}

// MARK: - UITextViewDelegate
extension BookingController: UITextViewDelegate {
    func textViewDidBeginEditing(_ textView: UITextView) {
        // Move textView
        topStackConstraint.constant = 0
        bottomStackConstraint.constant += constraintOffset
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
    
    func textViewDidEndEditing(_ textView: UITextView) {
        // Return textView
        topStackConstraint.constant = constraintOffset
        bottomStackConstraint.constant = constraintOffset
        navigationController?.setNavigationBarHidden(false, animated: true)
        
        // Save text
        manager.appointment.note = textView.text
    }
}
