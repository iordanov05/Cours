//
//  ViewController.swift
//  Course
//
//  Created by Иорданов Павел on 07.10.2023.
//

import UIKit
// final class - класс, от которого нельзя наследоваться
final class ViewController: UIViewController, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return beerData.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let beer = beerData[indexPath.row]
        var cell = UITableViewCell()
        var configuration = cell.defaultContentConfiguration()
        //configuration.image=UIImage()
        configuration.text = beer.name
        configuration.secondaryText = beer.tagline
        cell.contentConfiguration = configuration
        return cell
        
    }
    
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .cyan
        tableView.dataSource = self
        return tableView
        
    }()
    private var beerData: [BeerDTO] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
        
        
       
       
    }
}
