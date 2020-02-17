//  SchedulerController.swift
//  Health.booking
//
//  Created by Shak4l on 17/02/2020.
//  Copyright © 2020 Sigma. All rights reserved.

import UIKit

class SchedulerController: UIViewController {
    
    // - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    // - Data
    private var refreshController: UIRefreshControl?
    private var manager = GeneralManager.shared
    private var profile = DoctorProfile.current
    private var dataSource: [[Appointment]] {
        manager.appointmetsByStatus()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        manager.getAllAppointments(forDoctor: profile.data!.id) { (_) in
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
        }
        tableView.tableFooterView = UIView()
        refreshController = UIRefreshControl()
        refreshController?.addTarget(self, action: #selector(onRefresh), for: .valueChanged)
        tableView.refreshControl = refreshController
    }
    
    @objc private func onRefresh(_ sender: Any) {
        manager.getAllAppointments(forDoctor: profile.data!.id) { (_) in
            DispatchQueue.main.async {
                self.tableView.reloadData()
                self.refreshController?.endRefreshing()
            }
        }
    }
}

// MARK: - UITableViewDataSource
extension SchedulerController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return dataSource.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return dataSource[section].first?.status.rawValue.capitalized
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "ScheduleCell")
        let appointment = dataSource[indexPath.section][indexPath.row]
        cell.textLabel?.text = appointment.ownerName
        cell.detailTextLabel?.text = appointment.date
        cell.accessoryType = .disclosureIndicator
        return cell
    }
}

// MARK: - UITableViewDelegate
extension SchedulerController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        cell?.setSelected(false, animated: true)
        let appointment = dataSource[indexPath.section][indexPath.row]
        performSegue(withIdentifier: "ShowScheduledAppointment", sender: appointment)
    }
}

// MARK: - Navigation
extension SchedulerController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let dvc = segue.destination as? SchedulePreviewController else { return }
        dvc.appointment = sender as? Appointment
    }
}
