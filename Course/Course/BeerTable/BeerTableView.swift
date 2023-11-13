//
//  BeerTableView.swift
//  Course
//
//  Created by Иорданов Павел on 12.11.2023.
//

import UIKit

protocol BeeerTableViewDelegate{
    func didSelectRow(_ beerModel: BeerDTO)
}

final class BeerTableView: UIView{
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .cyan
        tableView.dataSource = tableManager
        tableView.delegate = tableManager
        return tableView
        
    }()
    private lazy var tableManager = BeerTableManager()
    var delegate: BeeerTableViewDelegate?
    var beerData: [BeerDTO] = []
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = .white
        addSubviews()
        makeConstraints()
        tableManager.delegate = self
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with viewModel: [BeerDTO]){
        tableManager.tableData = viewModel
        tableView.reloadData()
    }
    
}
extension BeerTableView: BeerTableManagerDelegate{
    func didSelectRow(_ beerModel: BeerDTO) {
        delegate?.didSelectRow(beerModel)
        
    }
    
    
}
    private extension BeerTableView {
        func addSubviews(){
            [tableView].forEach {
                self.addSubview($0)
            }
        }
        func makeConstraints() {
                [tableView].forEach {
                    $0.translatesAutoresizingMaskIntoConstraints = false
                
            }
            NSLayoutConstraint.activate([
                tableView.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
                tableView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor),
                tableView.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor),
                tableView.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor),
            ])
        }
}






























