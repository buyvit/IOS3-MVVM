//
//  TableViewCellViewModel.swift
//  IOS3-MVVM
//
//  Created by Vitaly Buylushkin on 06.11.2021.
//

import Foundation

class TableViewCellViewModel: TableViewCellViewModelType {
    
    private var data: String 
    
    var textForCell: String {
        return data
    }
    
    init(data: String) {
        self.data = data
    }
}
