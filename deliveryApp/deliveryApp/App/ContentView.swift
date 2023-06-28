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
            Image(systemName: "cube")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Teste teste")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
