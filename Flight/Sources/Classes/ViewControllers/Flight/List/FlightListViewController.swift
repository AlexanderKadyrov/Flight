//
//  FlightListViewController.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import UIKit

fileprivate let cellIdentifier = "FlightListTableViewCell"

class FlightListViewController: BaseViewController {
    
    private lazy var tableView: UITableView = {
        let view = UITableView(frame: .zero, style: .plain)
        view.tableHeaderView = UIView(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 12))
        view.register(FlightListTableViewCell.self, forCellReuseIdentifier: cellIdentifier)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        view.separatorStyle = .none
        view.dataSource = self
        view.delegate = self
        return view
    }()
    
    private lazy var refreshControl: UIRefreshControl = {
        let control = UIRefreshControl()
        control.addTarget(self, action: #selector(fetchItems), for: .valueChanged)
        control.tintColor = .white
        return control
    }()
    
    private let flightController = FlightController()
    private var items: [FlightProtocol] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureToolbar()
        configureViews()
        fetchItems()
    }
    
    private func configureToolbar() {
        let localized = "flight_navigation_bar_title".localized()
        setNavigationBar(text: "\(localized) App")
    }
    
    private func configureViews() {
        view.addSubview(tableView)
        tableView.addSubview(refreshControl)
        NSLayoutConstraint.activate([
            tableView.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor),
            tableView.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
    
    @objc
    private func fetchItems() {
        items = flightController.rndItems()
        tableView.reloadData()
        refreshControl.endRefreshing()
    }
}

extension FlightListViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = items[indexPath.row]
        if item is Notice {
            let vc = NoticeDetailViewController()
            vc.item = item
            navigationController?.pushViewController(vc, animated: true)
        } else if item is Event {
            let vc = EventDetailViewController()
            vc.item = item
            navigationController?.pushViewController(vc, animated: true)
        } else if item is Move {
            let vc = MoveDetailViewController()
            vc.item = item
            navigationController?.pushViewController(vc, animated: true)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension FlightListViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? FlightListTableViewCell
        cell?.item = item
        return cell ?? UITableViewCell()
    }
}
