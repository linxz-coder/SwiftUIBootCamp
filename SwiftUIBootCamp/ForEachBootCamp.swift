//
//  ForEachBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by 林晓中 on 2024/12/18.
//

import SwiftUI

struct Item: Identifiable{
    var id = UUID()
    var title = ""
    var done = false
}

struct ForEachBootCamp: View {
    
    let items = [
        Item(title: "item1",done: false),
        Item(title: "item2",done:true),
        Item(title: "item3",done:false)
    ]
    
//    let data: [String] = ["Hi", "hello", "everyone"]
    
    var body: some View {
        VStack{
//            ForEach(data.indices) { index in
//                Text("\(data[index]): \(index)")
//            }
            
            ForEach(items){ item in
                Text("\(item.title): \(item.id)")
            }
            
        }
    }
}

#Preview {
    ForEachBootCamp()
}
