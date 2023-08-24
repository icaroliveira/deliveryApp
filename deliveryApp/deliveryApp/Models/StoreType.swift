//
//  StoreType.swift
//  deliveryApp
//
//  Created by icaro on 24/08/23.
//

import Foundation
struct StoreType: Identifiable{
    let id: Int
    let name: String
    let logoImage: String
    let headerImage: String
    let location: String
    let stars: Int
    let products: [ProductType]
}
