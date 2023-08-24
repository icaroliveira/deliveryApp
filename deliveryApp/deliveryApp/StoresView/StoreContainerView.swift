//
//  StoreContainerView.swift
//  deliveryApp
//
//  Created by icaro on 01/07/23.
//

import SwiftUI

struct StoreContainerView: View {
    let title = "Lojas"
    var body: some View {
        VStack(alignment: .leading){
            Text(title)
                .font(.title2.bold())
            VStack(alignment: .leading, spacing: 30){
                ForEach(storesMock){ mock in
                    NavigationLink{
                        StoreDetailView(store: mock)
                    } label: {
                        StoreItemView(order: mock)
                    }
                }
            }
            .foregroundColor(.black)
        }
        .padding(20)
    }
}
struct StoreContainerView_Previews: PreviewProvider {
    static var previews: some View {
        StoreContainerView()
    }
}
