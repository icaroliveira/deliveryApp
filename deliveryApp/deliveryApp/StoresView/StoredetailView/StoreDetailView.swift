//
//  StoreDetailView.swift
//  deliveryApp
//
//  Created by icaro on 09/07/23.
//

import SwiftUI

struct StoreDetailView: View {
    
    let store: StoreType
    @Environment(\.presentationMode) var presentationMode
   
    var body: some View {
        ScrollView {
            ZStack {
                VStack(alignment: .leading){
                    
                    StoreDetailHeaderView(store: store)
                    StoreDetailProductsView(products: store.products)
                    
                    }
                }
                .navigationTitle(store.name)
                .navigationBarTitleDisplayMode(.large)
                .navigationBarBackButtonHidden()
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button {
                            presentationMode.wrappedValue.dismiss()
                        } label: {
                            HStack(spacing: 4){
                                Image(systemName: "cart")
                                
                                Text("Lojas")
                            }
                            .foregroundColor(Color("ColorRed"))
                        }
                        
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
