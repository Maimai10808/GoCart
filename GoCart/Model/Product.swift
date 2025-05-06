//
//  Product.swift
//  GoCart
//
//  Created by mac on 5/6/25.
//

import Foundation

struct Product {
    var id: String
    var name: String
    var imageURL: String
    var description: String
    var price: Decimal
    var isAvailable: Bool
    var category: String
}

struct Review {
    var rating: Float            // 评论评分
    var comment: String          // 评论内容
    var userName: String         // 评论用户名称
    var date: Date               // 评论日期
}
