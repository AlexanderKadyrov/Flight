//
//  FlightListTableViewCell.swift
//  Flight
//
//  Created by Alexander on 21/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import UIKit

class FlightListTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var viewContainer: UIView!
    @IBOutlet private weak var labelTitle: UILabel!
    @IBOutlet private weak var labelSubtitle: UILabel!
    
    //настраиваем стили и/или логику
    override func awakeFromNib() {
        super.awakeFromNib()
        viewContainer.layer.cornerRadius = 6.0
    }
    
    //объявляем свойство и слушаем setter
    public var item: FlightProtocol! {
        didSet {
            viewContainer.backgroundColor = item.color
            labelTitle.text = item.title
            labelSubtitle.text = item.subtitle
        }
    }
}
