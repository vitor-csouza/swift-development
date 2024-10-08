//
//  App.swift
//  store
//
//  Created by Usuário Convidado on 07/10/24.
//

import Foundation

struct App: Decodable {
    var feed:Feed
}

struct Feed: Decodable {
    var entry: [Entry]
}

struct Entry: Decodable {
    var name: Info
    var image: [Info]
    var price: Info
    var category: Category
    enum CodingKeys: String, CodingKey {
        case name = "im:name"
        case image = "im:image"
        case price = "im:price"
        case category
    }
}

struct Info: Decodable {
    var label: String
    var attributes: Attributes?
}

struct Attributes: Decodable {
    let amount: String?
    let currency: String?
    let height: String?
}

struct Category: Decodable {
    var attributes: AttributesCat
}

struct AttributesCat: Decodable {
    var label: String
}
