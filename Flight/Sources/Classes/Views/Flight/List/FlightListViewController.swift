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
    
    private lazy var flightController = FlightController()
    private var items: [FlightProtocol]!
    
    //настраиваем стили и/или логику
    override func viewDidLoad() {
        super.viewDidLoad()
        makeTableView()
        makeToolbar()
        makeItems()
    }
    
    private func makeTableView() {
        let nib = UINib(nibName: cellIdentifier, bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: cellIdentifier)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    private func makeToolbar() {
        self.title = ""
    }
    
    private func makeItems() {
        items = flightController.rndItems()
        tableView.reloadData()
    }
}

extension FlightListViewController: UITableViewDelegate {
    
    //возвращает высоту ячейки
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension // <- выставляем автоматическую высоту или фиксированную -> return 100
    }
}

extension FlightListViewController: UITableViewDataSource {
    
    //возвращает кол-во секций
    public func numberOfSections(in tableView: UITableView) -> Int {
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
