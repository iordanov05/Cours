//
//  BeerDetailsViewController.swift
//  Course
//
//  Created by Иорданов Павел on 13.11.2023.
//

import UIKit

final class BeerDetailsViewController: UIViewController {
    
    var beerModel: BeerDTO?
    
    private lazy var strackView: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        return view
    }()
    
    private lazy var titleView: UILabel = {
        let view = UILabel()
        return view
    }()
    
    private lazy var subtitleView: UILabel = {
        let view = UILabel()
        return view
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        addSubviews()
        makeConstraints()
        configure()
        
    }
    func addSubviews() {
        view.addSubview(strackView)
        strackView.addArrangedSubview(titleView)
        strackView.addArrangedSubview(subtitleView)
    }
    
    func makeConstraints() {
        strackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            strackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            strackView.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        ])
    }
    
    func configure(){
        titleView.text = beerModel?.name
        subtitleView.text = beerModel?.tagline
    }
    
}
