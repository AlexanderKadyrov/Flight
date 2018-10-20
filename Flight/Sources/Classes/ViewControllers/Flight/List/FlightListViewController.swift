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
    
    @IBOutlet private weak var tableView: UITableView!
    private let refreshControl = UIRefreshControl()
    
    private lazy var flightController = FlightController()
    private var items: [FlightProtocol]!
    
    //настраиваем стили и/или логику
    override func viewDidLoad() {
        super.viewDidLoad()
        makeTableView()
        makeToolbar()
        fetchItems()
    }
    
    private func makeTableView() {
        tableView.tableHeaderView = UIView(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: 12))
        tableView.register(UINib(nibName: cellIdentifier, bundle: nil), forCellReuseIdentifier: cellIdentifier)
        tableView.backgroundColor = .colorOnyx
        tableView.dataSource = self
        tableView.delegate = self
        makeRefreshControl()
    }
    
    private func makeRefreshControl() {
        refreshControl.addTarget(self, action: #selector(fetchItems), for: .valueChanged)
        refreshControl.tintColor = .white
        if #available(iOS 10.0, *) {
            tableView.refreshControl = refreshControl
        } else {
            tableView.addSubview(refreshControl)
        }
    }
    
    private func makeToolbar() {
        let navigationTitleFont = UIFont.boldSystemFont(ofSize: 21)
        self.navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.font: navigationTitleFont,
            NSAttributedString.Key.foregroundColor: UIColor.white
        ]
        self.title = "flight_navigation_bar_title".localized() + " " + "App"
    }
    
    @objc private func fetchItems() {
        items = flightController.rndItems()
        tableView.reloadData()
        refreshControl.endRefreshing()
    }
}

extension FlightListViewController: UITableViewDelegate {
    
    //возвращает высоту ячейки
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension // <- выставляем автоматическую высоту
    }
}

extension FlightListViewController: UITableViewDataSource {
    
    //возвращает кол-во секций
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //возвращает кол-во ячеек
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
    
    //возвращает подготовленную ячейку
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = items[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! FlightListTableViewCell
        cell.item = item
        return cell
    }
}
