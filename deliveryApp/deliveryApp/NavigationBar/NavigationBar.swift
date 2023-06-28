//
//  NavigationBar.swift
//  deliveryApp
//
//  Created by icaro on 28/06/23.
//

import SwiftUI

struct NavigationBar: View {
@State private var notificacao = false
    var body: some View {
        HStack{
            Button("Manaus, AM") { /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/ }
            Group{
                if notificacao{
                    Image(systemName: "bell")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                } else {
                    Image(systemName: "bell.badge")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 25, height: 25)
                }
            }
            .rotationEffect(.degrees(notificacao ? 0 : -360))
            .onTapGesture { withAnimation(.easeOut(duration: 0.5)) {notificacao.toggle()} }
        }
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar()
    }
}

