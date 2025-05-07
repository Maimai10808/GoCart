//
//  ProductsView.swift
//  GoCart
//
//  Created by mac on 5/7/25.
//

import SwiftUI

struct ProductsView: View {
    
    let columns: [GridItem] = [
            GridItem(.flexible())  // 第一列：可伸缩的宽度
        ]
    
    // 示例数据
        let items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"]
    
    var body: some View {
        
        NavigationView {
          VStack {
            HStack {
                
                Button {
                    
                } label: {
                    Image(systemName: "arrow.left")
                }
                
                
                Spacer()
                
                Text("Beverages")
                    .font(.largeTitle)
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "point.topleft.down.to.point.bottomright.curvepath")
                }
                
            }
            .padding(.horizontal)
            
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(items, id: \.self) { item in
                            NavigationLink(destination: ProductDtailView()) {
                                ProductListCellView()
                            }
                            .navigationBarHidden(true) // 隐藏默认的导航栏，这样 HStack 不会重复显示
            
                        }
                    }
                }
            }
            
            
            
        }
    }
}

#Preview {
    ProductsView()
}
