//
//  ShopViewModel.swift
//  GoCart
//
//  Created by mac on 5/6/25.
//

import Foundation

class ShopViewModel: ObservableObject {

    
}

struct MockProducts {
    
    static let sampleProducts = Product(id: "P001", name: "Apple iPhone 14", imageURL: "https://images.unsplash.com/photo-1632690902309-fddaf2c9c65d", description: "Latest iPhone model with A15 chip and 5G support", price: 999.99, isAvailable: true, category: "Smartphone")
    

    // 创建 30 个商品实例
    let products: [Product] = [
        // 分类: 手机
        Product(id: "P001", name: "Apple iPhone 14", imageURL: "https://images.unsplash.com/photo-1632690902309-fddaf2c9c65d", description: "Latest iPhone model with A15 chip and 5G support", price: 999.99, isAvailable: true, category: "Smartphone"),
        Product(id: "P002", name: "Samsung Galaxy S21", imageURL: "https://images.unsplash.com/photo-1618408587630-7b1fcd15596f", description: "Powerful Android smartphone with 120Hz AMOLED display", price: 799.99, isAvailable: true, category: "Smartphone"),
        
        // 分类: 电脑
        Product(id: "P003", name: "Dell XPS 13", imageURL: "https://images.unsplash.com/photo-1565164147-b62a3b212e3a", description: "Premium ultrabook with Intel i7 processor", price: 1299.99, isAvailable: true, category: "Laptop"),
        Product(id: "P004", name: "Apple MacBook Pro 16 inch", imageURL: "https://images.unsplash.com/photo-1556754072-6b8b5b85a73f", description: "High-end laptop with M1 chip, ideal for professional creatives", price: 2399.99, isAvailable: true, category: "Laptop"),
        
        // 分类: 耳机
        Product(id: "P005", name: "Sony WH-1000XM4", imageURL: "https://images.unsplash.com/photo-1605288300429-07b62f7e68d4", description: "Industry-leading noise-cancelling headphones with superior sound quality", price: 348.00, isAvailable: true, category: "Headphones"),
        Product(id: "P006", name: "Bose QuietComfort 35 II", imageURL: "https://images.unsplash.com/photo-1611780405561-8fe42ba0d216", description: "Noise-cancelling wireless headphones with Alexa voice control", price: 299.99, isAvailable: true, category: "Headphones"),
        
        // 分类: 电视
        Product(id: "P007", name: "Samsung 55 inch 4K TV", imageURL: "https://images.unsplash.com/photo-1600563723967-f0fa5647c4e2", description: "Smart TV with stunning 4K resolution and HDR support", price: 699.99, isAvailable: true, category: "TV"),
        Product(id: "P008", name: "LG UltraGear Monitor", imageURL: "https://images.unsplash.com/photo-1607060107504-1b360fa973fa", description: "27-inch gaming monitor with 144Hz refresh rate and ultra-fast response time", price: 349.99, isAvailable: true, category: "TV"),
        
        // 分类: 可穿戴设备
        Product(id: "P009", name: "Fitbit Charge 5", imageURL: "https://images.unsplash.com/photo-1632200196701-9e35fc635d8f", description: "Advanced fitness tracker with built-in GPS and heart rate monitoring", price: 149.99, isAvailable: true, category: "Wearables"),
        Product(id: "P010", name: "Samsung Galaxy Watch 4", imageURL: "https://images.unsplash.com/photo-1629577771472-c9a404205059", description: "Smartwatch with health tracking and ECG monitoring", price: 249.99, isAvailable: true, category: "Wearables"),
        
        // 分类: 相机
        Product(id: "P011", name: "Canon EOS R5", imageURL: "https://images.unsplash.com/photo-1606354522301-e97ea2a58e92", description: "Professional mirrorless camera with 45MP full-frame sensor", price: 3899.99, isAvailable: true, category: "Camera"),
        Product(id: "P012", name: "GoPro HERO10", imageURL: "https://images.unsplash.com/photo-1606162120062-ec36d9b89e19", description: "Action camera with 5.3K video resolution and HyperSmooth 4.0 stabilization", price: 399.99, isAvailable: true, category: "Camera"),
        
        // 分类: 游戏主机
        Product(id: "P013", name: "Sony PlayStation 5", imageURL: "https://images.unsplash.com/photo-1606946649711-49b7b59b7d0f", description: "Next-gen gaming console with ultra-fast SSD and immersive 4K gaming", price: 499.99, isAvailable: true, category: "Gaming Console"),
        Product(id: "P014", name: "Xbox Series X", imageURL: "https://images.unsplash.com/photo-1603164763035-9c2191390f64", description: "Powerful gaming console with 4K resolution and Ray Tracing", price: 499.99, isAvailable: true, category: "Gaming Console"),
        
        // 分类: 手机配件
        Product(id: "P015", name: "Anker Wireless Charger", imageURL: "https://images.unsplash.com/photo-1623932549920-1b0aebd43b09", description: "Fast wireless charging pad for all Qi-enabled devices", price: 29.99, isAvailable: true, category: "Mobile Accessories"),
        Product(id: "P016", name: "Apple AirPods Pro", imageURL: "https://images.unsplash.com/photo-1600850709813-4c5c71f423b1", description: "Noise-cancelling wireless earbuds with superior sound quality", price: 249.99, isAvailable: true, category: "Mobile Accessories"),
        
        // 分类: 运动鞋
        Product(id: "P017", name: "Nike Air Zoom Pegasus", imageURL: "https://images.unsplash.com/photo-1611716012360-262a1d5c6b2d", description: "Comfortable running shoes with breathable upper and responsive cushioning", price: 120.00, isAvailable: true, category: "Footwear"),
        Product(id: "P018", name: "Adidas Ultraboost 22", imageURL: "https://images.unsplash.com/photo-1608072591734-d3cc65f37a68", description: "Stylish running shoes with responsive Boost cushioning", price: 180.00, isAvailable: true, category: "Footwear"),
        
        // 分类: 家居用品
        Product(id: "P019", name: "Dyson V11 Cordless Vacuum", imageURL: "https://images.unsplash.com/photo-1629792362882-5a8c8ac0acb7", description: "High-performance cordless vacuum with powerful suction", price: 699.99, isAvailable: true, category: "Home Appliances"),
        Product(id: "P020", name: "Instant Pot Duo", imageURL: "https://images.unsplash.com/photo-1604674419174-cb1025b0fa2f", description: "Multifunctional pressure cooker for quick meal preparation", price: 99.99, isAvailable: true, category: "Home Appliances"),
        
        // 分类: 健身设备
        Product(id: "P021", name: "Bowflex Adjustable Dumbbells", imageURL: "https://images.unsplash.com/photo-1605100084627-d825a5f89ad5", description: "Adjustable dumbbells for home fitness", price: 299.99, isAvailable: true, category: "Fitness Equipment"),
        Product(id: "P022", name: "Peloton Bike", imageURL: "https://images.unsplash.com/photo-1615777422863-d5f90cd3cf7b", description: "Premium indoor cycling bike with a wide range of classes", price: 1999.99, isAvailable: true, category: "Fitness Equipment"),
        
        // 分类: 图书
        Product(id: "P023", name: "The Great Gatsby", imageURL: "https://images.unsplash.com/photo-1505974991-830b2a93a99e", description: "Classic novel by F. Scott Fitzgerald", price: 10.99, isAvailable: true, category: "Books"),
        Product(id: "P024", name: "The Catcher in the Rye", imageURL: "https://images.unsplash.com/photo-1601587676868-2703019619d7", description: "Classic novel by J.D. Salinger", price: 9.99, isAvailable: true, category: "Books"),
        
        // 分类: 食品
        Product(id: "P025", name: "Organic Green Tea", imageURL: "https://images.unsplash.com/photo-1567765932-41d930ec9d22", description: "Organic green tea leaves for a healthy drink", price: 15.99, isAvailable: true, category: "Food & Beverages"),
        Product(id: "P026", name: "Protein Bars", imageURL: "https://images.unsplash.com/photo-1603912073143-05c88d96c5fc", description: "High-protein energy bars for post-workout recovery", price: 22.99, isAvailable: true, category: "Food & Beverages"),
        
        // 分类: 办公用品
        Product(id: "P027", name: "Logitech MX Master 3", imageURL: "https://images.unsplash.com/photo-1587013917604-15a6c4076c8b", description: "Advanced wireless mouse with ergonomic design", price: 99.99, isAvailable: true, category: "Office Supplies"),
        Product(id: "P028", name: "HP OfficeJet Pro 9015", imageURL: "https://images.unsplash.com/photo-1575433101233-7f51b7ab2552", description: "All-in-one wireless printer for home office", price: 179.99, isAvailable: true, category: "Office Supplies"),
        
        // 分类: 玩具
        Product(id: "P029", name: "LEGO Creator Set", imageURL: "https://images.unsplash.com/photo-1603931658586-e94b3177bc27", description: "LEGO building set for creative fun", price: 49.99, isAvailable: true, category: "Toys"),
        Product(id: "P030", name: "Barbie Dream House", imageURL: "https://images.unsplash.com/photo-1602440789132-342ed0837456", description: "Barbie dollhouse with furniture and accessories", price: 129.99, isAvailable: true, category: "Toys")
    ]
}
