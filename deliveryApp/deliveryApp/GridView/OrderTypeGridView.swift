//
//  OrderTypeGridView.swift
//  deliveryApp
//
//  Created by icaro on 28/06/23.
//

import SwiftUI

struct OrderTypeGridView: View {
    let orders = ["Restaurantes","Farmacia","Desconto","Gourmet","Mercados", "Pets", "Bebidas"]
    var body: some View {
        
        LazyHGrid(rows: [
            GridItem(.fixed(100)),
            GridItem(.fixed(100)),
            GridItem(.fixed(100))
        ]){
            ForEach(ordersMock){ orderItem in
                Text(orderItem.name)
            }
        }
    }
}

struct OrderTypeGridView_Previews: PreviewProvider {
    static var previews: some View {
        OrderTypeGridView()
    }
}
