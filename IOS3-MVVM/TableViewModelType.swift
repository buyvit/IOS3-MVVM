//
//  TableViewModelType.swift
//  IOS3-MVVM
//
//  Created by Vitaly Buylushkin on 05.11.2021.
//

import Foundation


protocol TableViewViewModelType {
    var numberOfRows: Int { get }
    //var rowsText: [String] { get }
    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? 
}
