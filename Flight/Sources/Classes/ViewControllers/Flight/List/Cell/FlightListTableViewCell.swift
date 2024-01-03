//
//  FlightListTableViewCell.swift
//  Flight
//
//  Created by Alexander on 21/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import UIKit

class FlightListTableViewCell: UITableViewCell {
    
    private let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .colorBrilliantAzure
        view.layer.cornerRadius = 6.0
        return view
    }()
    
    @IBOutlet private weak var labelTitle: UILabel!
    @IBOutlet private weak var labelSubtitle: UILabel!
    
    var item: FlightProtocol? {
        didSet {
            guard let thisItem = item else { return }
            labelTitle.text = thisItem.title
            labelSubtitle.text = thisItem.subtitle
        }
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureViews()
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureViews()
    }
    
    private func configureViews() {
        contentView.addSubview(containerView)
        NSLayoutConstraint.activate([
            containerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -12),
            containerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 12),
            containerView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -12),
            containerView.topAnchor.constraint(equalTo: contentView.topAnchor)
        ])
    }
}
