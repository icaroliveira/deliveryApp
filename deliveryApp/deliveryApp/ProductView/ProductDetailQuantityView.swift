//
//  ProductDetailQuantityView.swift
//  deliveryApp
//
//  Created by icaro on 06/09/23.
//

import SwiftUI

struct ProductDetailQuantityView: View {
    
   
    @State var productQuantity: Int
        
    var body: some View {
        VStack(spacing: 16){
            Text("Quantidade")
                .font(.title3)
                .bold()
            
            HStack{
                Button{
                    if productQuantity > 1{
                        productQuantity -= 1
                    }
                }label: {
                    Image(systemName: "minus.circle.fill")
                        .font(.title)
                        .bold()
                }
                Text("\(productQuantity)")
                    .font(.title)
                    .bold()
                
                Button{
                    productQuantity += 1
                }label: {
                    Image(systemName:"plus.circle.fill")
                        .font(.title)
                        .bold()
                }
            }
            
        }
    }
}

struct ProductDetailQuantityView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailQuantityView(productQuantity: 1)
    }
}
