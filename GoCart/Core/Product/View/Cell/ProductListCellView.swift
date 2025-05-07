//
//  ProductListCellView.swift
//  GoCart
//
//  Created by mac on 5/7/25.
//

import SwiftUI

struct ProductListCellView: View {
    var body: some View {
            
            HStack(alignment: .top) { // 使用 .top 对齐
                Rectangle()
                    .frame(width: 150, height: 150)
                    .cornerRadius(10)
                
                VStack(alignment: .leading) { // 文字部分使用 .leading 对齐
                    Text("Bell Pepper Red")
                        .font(.title)
                        .padding(.bottom, 5) // 给标题添加下边距
                    
                    Text("$ 6.12")
                        .font(.subheadline)
                        .padding(.bottom, 5) // 给价格添加下边距
                    
                    Text("300 people buy it")
                        .font(.caption)
                }
                .padding(.leading, 10) // 给文字部分添加左边距，防止紧贴图片
            }
            .padding()
        }
}

#Preview {
    ProductListCellView()
}
