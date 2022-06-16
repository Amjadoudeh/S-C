//
//  Product.swift
//  S&C
//
//  Created by Amajd Oudeh on 16.06.22.
//

import Foundation
struct Product {
    private(set) public var title: String
    private(set) public var price: String
    private(set) public var imageName: String
    
    init(title: String, price: String, imageName: String) {
        self.title = title
        self.price = price
        self.imageName = imageName
    }
}
