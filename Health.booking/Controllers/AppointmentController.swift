//  AppointmentController.swift
//  Health.booking
//
//  Created by Shak4l on 13/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit

class AppointmentController: UIViewController {
    
    // - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    // - Manager
    private var manager = GeneralManager.shared
    
    // - Data Source
    var appointments: [Appointment] {
        manager.appointments ?? []
    }
    
    // - Refresh Controller
    private lazy var refreshController = UIRefreshControl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = UIView()
        tableView.refreshControl = refreshController
        
        refreshController.attributedTitle = NSAttributedString(string: "Pull to refresh")
        refreshController.addTarget(self,
                             action: #selector(onRefresh),
                             for: .valueChanged)
        
        manager.getAllAppointments { _ in
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        
        // - Side load other data 
        manager.getAllDoctors()
        manager.getAllHospitals()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? AppointmentDetailController else {
            return
        }
        dvc.appointment = sender as? Appointment
    }
    
    @objc private func onRefresh(_ sender: Any) {
        manager.getAllAppointments { _ in
            DispatchQueue.main.async {
                self.tableView.reloadData()
                self.refreshController.endRefreshing()
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
        cell.detailTextLabel?.text = item.status.rawValue.capitalized
        cell.accessoryType = .disclosureIndicator
        return cell
    }
}

extension AppointmentController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        cell?.setSelected(false, animated: true)
        let item = appointments[indexPath.row]
        performSegue(withIdentifier: "ShowAppointmentSegue", sender: item)
    }
}
