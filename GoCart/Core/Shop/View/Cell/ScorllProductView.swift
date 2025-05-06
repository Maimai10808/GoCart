//
//  ScorllProductView.swift
//  GoCart
//
//  Created by mac on 5/6/25.
//

import SwiftUI

struct ScorllProductView: View {
    
    let title: String
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack {
                Text(title)
                    .font(.largeTitle)
                
                Spacer()
                
                Button {
                    print("See all")
                } label: {
                    Text("See all")
                        .font(.title)
                }
            }
            .padding()
            
            HStack {
                ProductsmallView(product: MockProducts.sampleProducts)
            }
            
        }
    }
}

#Preview {
    ScorllProductView(title: "Exclusive Offer")
}
