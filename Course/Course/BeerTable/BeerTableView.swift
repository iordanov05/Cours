//
//  BeerTableView.swift
//  Course
//
//  Created by Иорданов Павел on 12.11.2023.
//

import UIKit

final class BeerTableView: UIView{
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .cyan
        // tableView.dataSource = self
        return tableView
        
    }()
    
    init() {
        super.init(frame: .zero)
        self.backgroundColor = .white
        addSubviews()
        makeConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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






























