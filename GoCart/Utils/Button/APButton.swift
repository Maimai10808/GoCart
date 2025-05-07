//
//  APButton.swift
//  GoCart
//
//  Created by mac on 5/7/25.
//

import SwiftUI

struct APButton: View {
    
    let title: String
    
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(10)
    }
}

#Preview {
    APButton(title:"Test")
}
