//
//  ProductDetailView.swift
//  deliveryApp
//
//  Created by icaro on 24/08/23.
//

import SwiftUI

struct ProductDetailView: View {
    
    let product: ProductType
    
    var body: some View {
        
        VStack{
            VStack(alignment: .leading){
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(radius: 20)
                Text(product.name)
                    .font(.title)
                    .bold()
                    .padding(.horizontal)
                Text(product.description)
                    .padding(.horizontal)
                Text(product.formattedPrice)
                    .font(.title3)
                    .bold()
                    .padding(.horizontal)
            }
            Spacer()
            Button{
                //pode colocar algum print
            }label: {
                HStack{
                    Image(systemName: "cart")
                    
                    Text("Adicionar ao carrinho")
                }
                .padding(.horizontal, 32)
                .padding(.vertical,16)
                .font(.title3)
                .bold()
                .background(Color("ColorRed"))
                .foregroundColor(.white)
                .cornerRadius(32)
                .shadow(color: Color("ColorRedDark").opacity(0.5), radius: 10, x: 6,y: 8)
            }
        }
        
        Text(product.name)
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView(product: storesMock[0].products[0])
    }
}
