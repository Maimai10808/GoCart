//
//  ShopView.swift
//  GoCart
//
//  Created by mac on 5/6/25.
//

import SwiftUI

struct ShopView: View {
    
    @State private var searchText = ""
    
    var body: some View {
        VStack {
            
            
            Image("logo")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .overlay {
                   Circle()
                        .stroke(.white, lineWidth: 4)
                            }
                .shadow(radius: 7)
                .frame(width: 100, height: 100)
            
            
            HStack {
                Image(systemName: "pin")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                
                Text("Henan,Luoyang")
                    .font(.title2)
            }
            
            HStack {
                TextField("Search", text: $searchText)
                    .padding()
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
            }
            .background(.gray)
            .padding(.horizontal)
            
            
            
                
        }
    }
}

#Preview {
    ShopView()
}
