//
//  ContentView.swift
//  deliveryApp
//
//  Created by icaro on 28/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            AngularGradient(gradient: Gradient(colors: [Color(red: 0.9, green: 0.6, blue: 0.2), Color(red: 0.8, green: 0.4, blue: 0.1)]), center: .center, angle: .degrees(45))
                        .edgesIgnoringSafeArea(.all)
            VStack {
                NavigationBar()
                    .padding(.horizontal,15)
                
                ScrollView(.vertical, showsIndicators: false){
                    VStack(spacing: 20){
                        OrderTypeGridView()
                        CarroselTabView()
                        StoreContainerView()
                    }
                }
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
