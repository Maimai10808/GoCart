//
//  ContentView.swift
//  GoCart
//
//  Created by mac on 5/6/25.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex) {
                    
                    ShopView()
                        .onTapGesture {
                            self.selectedIndex = 0
                        }
                        .tabItem{
                            Image(systemName: "bag")
                        }.tag(0)
                    
                    ExploreView()
                        .onTapGesture {
                            self.selectedIndex = 1
                        }
                        .tabItem{
                            Image(systemName: "magnifyingglass")
                        }.tag(1)
                    
                    FavouriteView()
                        .onTapGesture {
                            self.selectedIndex = 2
                        }
                        .tabItem{
                            Image(systemName: "heart")
                        }.tag(2)
                    
                    CartView()
                        .onTapGesture {
                            self.selectedIndex = 3
                        }
                        .tabItem{
                            Image(systemName: "cart")
                        }.tag(3)
            
                    AccountView()
                        .onTapGesture {
                           self.selectedIndex = 3
                         }
                        .tabItem{
                             Image(systemName: "person")
                        }.tag(4)
            
            
                    
                }
    }
}

#Preview {
    MainTabView()
}
