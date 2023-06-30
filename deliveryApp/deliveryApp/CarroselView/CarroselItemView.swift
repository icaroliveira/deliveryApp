//
//  CarroselItemView.swift
//  deliveryApp
//
//  Created by icaro on 30/06/23.
//

import SwiftUI

struct CarroselItemView: View {
    let order: OrderType
    var body: some View {
        Image(order.image)
            .resizable()
            .scaledToFit()
            
    }
}

struct CarroselItemView_Previews: PreviewProvider {
    static var previews: some View {
        CarroselItemView(order: OrderType(id: 1, name: "", image: "barbecue-banner"))
    }
}
