//
//  StoreDetailView.swift
//  deliveryApp
//
//  Created by icaro on 09/07/23.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: StoreType
    var body: some View {
        VStack(alignment: .leading){
            Image(store.headerImage)
                .resizable()
                .scaledToFit()
            HStack{
                Text(store.name)
                    .font(.title)
                    .bold()
                
                Spacer()
                
                Image(store.logoImage)
            }
            .padding(.vertical,8)
            .padding(.horizontal)
            
            HStack{
                Text(store.location)
                ForEach(1...store.stars, id:\.self) { _ in
                    Image(systemName:"star.fill" )
                }
            }
        }
    }
}

struct StoreDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StoreDetailView(store: storesMock[0])
    }
}
