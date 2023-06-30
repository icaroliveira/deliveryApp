//
//  ContentView.swift
//  deliveryApp
//
//  Created by icaro on 28/06/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationBar()
                .padding(.horizontal,15)
            
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20){
                    OrderTypeGridView()
                    CarroselTabView()
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
