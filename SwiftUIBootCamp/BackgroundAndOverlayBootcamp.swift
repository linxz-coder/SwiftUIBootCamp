//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by 林晓中 on 2024/12/24.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
        
        Circle()
            .fill(.pink)
            .frame(width: 100, height: 100)
            .overlay(alignment: .center) {
                Text("1")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
            .background(
                Circle()
                    .fill(.green)
                    .frame(width: 120, height: 120)
                , alignment: .bottomTrailing
            )
        
//        Text("Hello, World!")
//
//            .background(
////                .red
////                .linearGradient(Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing)
//                Circle()
//                    .fill(.blue)
//                    .frame(width: 100, height: 100)
//            )
//            .background(
//                Circle()
//                    .fill(.red)
//                    .frame(width: 120, height: 120)
//            )
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
