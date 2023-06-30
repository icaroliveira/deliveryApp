//
//  CarroselTabView.swift
//  deliveryApp
//
//  Created by icaro on 30/06/23.
//

import SwiftUI

struct CarroselTabView: View {
    let ordersMock: [OrderType] = [
    OrderType(id: 1, name: "banner burguer", image: "barbecue-banner"),
    OrderType(id: 2, name: "banner brazilian", image: "brazilian-meal-banner"),
    OrderType(id: 3, name: "banner pokes", image: "pokes-banner")
    ]
    var body: some View {
        TabView{
            ForEach(ordersMock) { mock in
                CarroselItemView(order: mock)
            }
        }
        .frame(height: 180)
        .tabViewStyle(.page(indexDisplayMode: .never))
    }
}

struct CarroselTabView_Previews: PreviewProvider {
    static var previews: some View {
        CarroselTabView()
    }
}
