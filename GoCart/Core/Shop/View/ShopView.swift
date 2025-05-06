//
//  ShopView.swift
//  GoCart
//
//  Created by mac on 5/6/25.
//

import SwiftUI

struct ShopView: View {
    
    @State private var searchText = ""
    @State var viewModel = ShopViewModel()
    
    
    var body: some View {
        ScrollView {
            VStack {
                
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
                            .cornerRadius(10)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        
                    }
                    .background(.gray)
                    .cornerRadius(10)
                    .padding(.horizontal)
                    
                    Rectangle()
                        .frame(width: 368, height: 114)
                        .cornerRadius(10)
                }
               
                
                ScorllProductView(title: "Exclusive Offer")
                
                ScorllProductView(title:  " Best Selling")
                
                
            }
        }
    }
}

#Preview {
    ShopView()
}
