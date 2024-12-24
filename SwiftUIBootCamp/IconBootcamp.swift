//
//  IconBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by linxiaozhong on 2024/12/24.
//

import SwiftUI

struct IconBootcamp: View {
    var body: some View {
        //MARK: - 苹果原色彩icon
        Image(systemName: "paperplane.circle.fill")
            .font(.largeTitle)
            .symbolRenderingMode(.multicolor)
        
        Image(systemName: "heart.fill")
        //MARK: - 大小
//            .font(.largeTitle)
        
//            .font(.system(size: 100))
            
            .resizable()
//            .aspectRatio(contentMode: .fit)
            .scaledToFit()
            .frame(width: 300, height: 300)
        
        //MARK: - 颜色
            .foregroundStyle(.green)
    }
}

#Preview {
    IconBootcamp()
}
