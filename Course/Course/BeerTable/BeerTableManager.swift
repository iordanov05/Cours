//
//  BeerTableManager.swift
//  Course
//
//  Created by Иорданов Павел on 12.11.2023.
//

import Foundation
import UIKit
final class BeerTableManager: NSObject {
    var tableData: [BeerDTO] = []
    
}

extension BeerTableManager: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let beer = tableData[indexPath.row]
        var cell = UITableViewCell()
        var configuration = cell.defaultContentConfiguration()
        //configuration.image=UIImage()
        configuration.text = beer.name
        configuration.secondaryText = beer.tagline
        cell.contentConfiguration = configuration
        return cell
        
    }
    

}




























