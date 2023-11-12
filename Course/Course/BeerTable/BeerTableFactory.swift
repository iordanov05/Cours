//
//  BeerTableFactory.swift
//  Course
//
//  Created by Иорданов Павел on 12.11.2023.
//

import Foundation
final class BeerTableFactory{
    func build() -> BeerTableViewController{
        let service = BeerService()
        let viewController = BeerTableViewController(service: service)
        return viewController
    }
}
