//
//  ProductCategoryListCellView.swift
//  GoCart
//
//  Created by mac on 5/6/25.
//

import SwiftUI

struct ProductCategoryListCellView: View {
    
    let product : Product
    
    var body: some View {
        
        VStack {
            Image("avatar 1")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
                .padding(.all, 8)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.gray.opacity(0.4))
                )
            
            Text(product.category)
                .font(.largeTitle)
            
        }
        .frame(width: 174.5)
        .background(.gray)
        .cornerRadius(10)
        
    }
}


#Preview {
    ProductCategoryListCellView(product: MockProducts.sampleProducts)
}
