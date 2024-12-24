//
//  GradientsBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by linxiaozhong on 2024/12/24.
//

import SwiftUI

struct GradientsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
                LinearGradient(gradient: Gradient(colors: [Color.teal, Color.blue]), startPoint: .topLeading, endPoint: .trailing)
                
//                RadialGradient(gradient: Gradient(colors: [Color.teal, Color.blue]), center: .center, startRadius: 5, endRadius: 500)
                
//                AngularGradient(gradient: Gradient(colors: [.teal,.blue]), center: .center, angle: .degrees(90))
            )
            .frame(width: 300, height: 300)
    }
}

#Preview {
    GradientsBootcamp()
}
