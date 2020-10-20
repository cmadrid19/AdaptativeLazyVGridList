//
//  Item.swift
//  AdaptiveVGridList
//
//  Created by Maxim Macari on 20/10/2020.
//

import Foundation

struct Item: Identifiable {
    
    let id = UUID()
    let title: String
    let subtitle: String
    let imageName: String
    
}

extension Item{
    
    static var stubs: [Item] {
        (0..<31).map {
            Item(title: "Title \($0)", subtitle: "subtitle \($0)", imageName: "image-\($0)")
        }
        
    }
    
}
