//
//  TableViewCell.swift
//  IOS3-MVVM
//
//  Created by Vitaly Buylushkin on 05.11.2021.
//

import UIKit

class TableViewCell: UITableViewCell {
    override func prepareForReuse() {
        super.prepareForReuse()
        self.accessoryType = .none
    }

}
