//
//  ProductDtailView.swift
//  GoCart
//
//  Created by mac on 5/7/25.
//

import SwiftUI

struct ProductDtailView: View {
    var body: some View {
        
        VStack {
            
            
            HStack {
                
                Button {
                    
                } label: {
                    Image(systemName: "arrow.left")
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Image(systemName: "square.and.arrow.up")
                }
                
            }
            .padding(.horizontal)
            
            
            ScrollView {
                Rectangle()
                    .frame(width: 423, height: 371)
                
                VStack {
                    HStack {
                        VStack {
                            Text("Naturel Red Apple")
                            
                            
                            Text("1kg, Price")
                            
                        }
                        
                        Spacer()
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "square.and.arrow.up")
                        }
                    }
                    .padding()
                    
                    Divider()
                        .frame(height: 1)
                        .background(Color.gray)  // 设置分割线颜色
                        .padding(.horizontal)    // 设置左右边距
                    
                    HStack {
                        
                        HStack {
                            Button {
                                
                            } label: {
                                Image(systemName: "minus")
                            }
                            
                            Text("1")
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "plus")
                            }
                        }
                        
                        Spacer()
                        
                        Text("$\(4.99)")
                    }
                    .padding()
                    
                    Divider()
                        .frame(height: 1)
                        .background(Color.gray)  // 设置分割线颜色
                        .padding(.horizontal)    // 设置左右边距
                    
                    VStack {
                        HStack {
                            Text("Product Detail")
                                .font(.title2)
                            
                            Spacer()
                            
                            Button {
                                
                            } label: {
                                Image(systemName: "chevron.down")
                            }
                        }
                        
                        Text("Apples Are Nutritious.Apples May Be Good For Weight Loss. Apples May Be Good For Your Heart. As Part Of A Healtful And Varied Diet.")
                    }
                    .padding()
                    
                    Divider()
                        .frame(height: 1)
                        .background(Color.gray)  // 设置分割线颜色
                        .padding(.horizontal)    // 设置左右边距
                    
                    HStack {
                        Text("Nutritions")
                        
                        Spacer()
                        
                        Text("100gr")
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "chevron.right")
                        }
                    }
                    .padding()
                    
                    Divider()
                        .frame(height: 1)
                        .background(Color.gray)  // 设置分割线颜色
                        .padding(.horizontal)    // 设置左右边距
                    
                    HStack {
                        Text("Review")
                        
                        Spacer()
                        
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star.fill")
                        Image(systemName: "star")
                        Image(systemName: "star")
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "chevron.right")
                        }
                    }
                    .padding()
                    
                }
            }
            
            APButton(title: "Add to Basket")
        }
    }
}

#Preview {
    ProductDtailView()
}
