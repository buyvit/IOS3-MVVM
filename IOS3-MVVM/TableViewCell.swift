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
    
    weak var viewModel: TableViewCellViewModelType? {
        willSet(viewModel) {
            guard let viewModel = viewModel else { return }
            viewModel.textForCell
        }
    }
}
