//
//  FlightViewController.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import TabloidView
import UIKit

class FlightViewController: BaseViewController {
    
    private lazy var tableView: TabloidView = {
        let view = TabloidView(style: .plain)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        view.separatorStyle = .none
        return view
    }()
    
    private lazy var refreshControl: UIRefreshControl = {
        let control = UIRefreshControl()
        control.addTarget(self, action: #selector(fetchItems), for: .valueChanged)
        control.tintColor = .white
        return control
    }()
    
    var viewModel: FlightViewModel? {
        didSet {
            tableView.viewModel = viewModel?.tabloidViewModel
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureToolbar()
        configureViews()
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
        viewModel?.fetchItems()
        refreshControl.endRefreshing()
    }
}
