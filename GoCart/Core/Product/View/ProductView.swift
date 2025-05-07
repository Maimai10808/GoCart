//
//  ProductView.swift
//  GoCart
//
//  Created by mac on 5/6/25.
//

import SwiftUI

struct ProductView: View {
    
    @State private var searchText = ""
    
    let columns: [GridItem] = [
            GridItem(.flexible()),  // 第一列：可伸缩的宽度
            GridItem(.flexible())  // 第二列：可伸缩的宽度
        ]
    
    // 示例数据
        let items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6"]
    
    var body: some View {
        ScrollView {
            Text("Find Products")
                .font(.largeTitle)
            
            
            
            HStack {
                TextField("Search", text: $searchText)
                    .padding()
                    .cornerRadius(10)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                
            }
            .background(.gray)
            .cornerRadius(10)
            .padding(.horizontal)
            
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(items, id: \.self) { item in
                        ProductCategoryListCellView(product: MockProducts.sampleProducts)
                        
                    }
                }
            }
            
            
        }
    }
}

#Preview {
    ProductView()
}
