//
//  OrderTypeGridView.swift
//  deliveryApp
//
//  Created by icaro on 28/06/23.
//

import SwiftUI

struct OrderTypeGridView: View {
    var body: some View {
        
        Grid{
            GridRow{
                Text("teste teste")
                Text("ola ola")
                Text("oi oi oi")
            }
            
            Divider()
            
            GridRow{
                Text("teste teste")
                Text("ola ola")
                Text("oi oi oi")
            }
        }
    }
}

struct OrderTypeGridView_Previews: PreviewProvider {
    static var previews: some View {
        OrderTypeGridView()
    }
}
