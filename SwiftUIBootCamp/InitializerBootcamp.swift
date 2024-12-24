//
//  InitializerBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by 林晓中 on 2024/12/24.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    //MARK: - init()，swiftui可以省略
//    init(backgroundColor: Color, count: Int, title: String) {
//        self.backgroundColor = backgroundColor
//        self.count = count
//        self.title = title
//    }
    
    init(count: Int, fruit: Fruit) {
        
        self.count = count
//        self.title = title
//
//        if title == "Apples"{
//            self.backgroundColor = .red
//        } else {
//            self.backgroundColor = .orange
//        }
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundColor = .red
        } else {
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
    }
    
    //MARK: - enum: 处理typo的方法，不用输入String
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

#Preview {
//    InitializerBootcamp(count: 5, title: "Apples")
    HStack {
        InitializerBootcamp(count: 5, fruit: .apple)
        InitializerBootcamp(count: 26, fruit: .orange)
    }
}
