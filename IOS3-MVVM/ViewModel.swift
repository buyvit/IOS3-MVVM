//
//  ViewModel.swift
//  IOS3-MVVM
//
//  Created by Vitaly Buylushkin on 05.11.2021.
//

import Foundation

class ViewModel: TableViewViewModelType {
    
    var dataForCells = DataForCells(data: ["Авиарежим", "Wi-Fi", "Bluetooth", "Сотовая связь","Режим модема" , "VPN", "Уведомления", "Звуки, тактильные сигналы", "Фокусирование", "Экранное время"])
   
    var numberOfRows: Int {
        return dataForCells.data.count
    }

    func cellViewModel(forIndexPath indexPath: IndexPath) -> TableViewCellViewModelType? {
        let dataForCell = dataForCells.data[indexPath.row]
        return TableViewCellViewModel(data: dataForCell)
    }
 
}
