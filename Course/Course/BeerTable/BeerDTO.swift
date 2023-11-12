//
//  BeerModel.swift
//  Course
//
//  Created by Иорданов Павел on 12.11.2023.
//

import Foundation

struct BeerDTO: Decodable{
    let id: Int
    let name: String
    let tagline: String
    let imageUrl: URL?
}

