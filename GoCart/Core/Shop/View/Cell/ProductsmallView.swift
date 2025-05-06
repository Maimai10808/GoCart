//
//  ProductsmallView.swift
//  GoCart
//
//  Created by mac on 5/6/25.
//

import SwiftUI

struct ProductsmallView: View {
    
    let product: Product
    
    var body: some View {
        
        VStack {
            
            // 使用 AsyncImage 来加载图片
                        AsyncImage(url: URL(string: product.imageURL)) { image in
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 150, height: 150)
                                .clipped()
                        } placeholder: {
                            ProgressView()  // 加载时显示进度条
                                .frame(width: 150, height: 150)
                        }
            
            
                    Text(product.name)
                        .font(.title2)
                        .fontWeight(.medium)
            
            Text("\(product.category)")
                    
            HStack {
                Text("$\(product.price)")
                
                Spacer()
                
                Button {
                    print("")
                } label: {
                    Image(systemName: "plus")
                    
                }
                
            }
            .padding(.horizontal)
                
            Spacer()
            
        }
        .frame(width: 200, height: 230)
        .cornerRadius(10)
        .overlay {
            Rectangle()
                .stroke(.white, lineWidth: 4)
        }
        .shadow(radius: 7)
        
        
        
    }
}


#Preview {
    ProductsmallView(product: MockProducts.sampleProducts)
}


