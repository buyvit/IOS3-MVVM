//
//  ViewController.swift
//  IOS3-MVVM
//
//  Created by Vitaly Buylushkin on 05.11.2021.
//

import UIKit

class ViewController: UIViewController {

    
    var viewModel: TableViewViewModelType?
    
    let tableView = UITableView(frame: CGRect.zero, style: .grouped)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel = ViewModel()
        
        
        self.view.backgroundColor = UIColor.white
        self.navigationItem.title = "Настройки"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.view.addSubview(tableView)
        self.tableView.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        self.tableView.dataSource = self
        self.updateLayout(with: self.view.frame.size)
    }

    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        coordinator.animate(alongsideTransition: {(contex) in
            self.updateLayout(with: size)
        }, completion: nil)
    }
    
    private func updateLayout(with size: CGSize) {
        self.tableView.frame = CGRect(origin: .zero, size: size)
    }
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       switch tableView {
       case self.tableView:
        return viewModel?.numberOfRows ?? 0
        default:
          return 0
       }
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        
        //cell.textLabel?.text = viewModel?.rowsText[indexPath.row] ?? ""
       
        if indexPath.row == 0 {
            cell.accessoryType = .disclosureIndicator
        }
        
        guard let viewModel = viewModel else {return UITableViewCell()}
        let cellViewModel = viewModel.cellViewModel(forIndexPath: indexPath)
 
       
        cell.viewModel = cellViewModel
      
        
        return cell
    }
}


