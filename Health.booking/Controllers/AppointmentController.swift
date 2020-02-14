//  AppointmentController.swift
//  Health.booking
//
//  Created by Shak4l on 13/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit

class AppointmentController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    fileprivate lazy var manager = AppointmentManager()
    fileprivate var appointments = [Appointment]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        manager.getAll { (app) in
            guard let list = app else { return }
            self.appointments = list
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
    }
}

// MARK: - UITableViewDataSource
extension AppointmentController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appointments.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "AppointmentCell")
        let item = appointments[indexPath.row]
        cell.textLabel?.text = "Dr.\(item.doctorName)" 
        cell.detailTextLabel?.text = item.status.rawValue
        cell.accessoryType = .disclosureIndicator
        return cell
    }
}
