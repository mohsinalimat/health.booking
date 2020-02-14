//  AppointmentController.swift
//  Health.booking
//
//  Created by Shak4l on 13/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit

class AppointmentController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() { super.viewDidLoad() }
}

// MARK: - UITableViewDataSource
extension AppointmentController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "TestCell")
        cell.textLabel?.text = "Label"
        cell.detailTextLabel?.text = "20-02-2020"
        cell.accessoryType = .disclosureIndicator
        return cell
    }
}
