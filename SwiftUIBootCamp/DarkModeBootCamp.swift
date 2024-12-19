//
//  DarkModeBootCamp.swift
//  SwiftUIBootCamp
//
//  Created by 林晓中 on 2024/12/19.
//

import SwiftUI

struct DarkModeBootCamp: View {
    
    @Environment(\.colorScheme) private var colorScheme
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(spacing:20){
                    Text("This text is PRIMARY")
                        .foregroundStyle(.primary)
                    Text("This text is SECONDARY")
                        .foregroundStyle(.secondary)
                    Text("This text is BLACK")
                        .foregroundStyle(.black)
                    Text("This text is WHITE")
                        .foregroundStyle(.white)
                    Text("This color is globally adaptive!")
                        .foregroundStyle(.adaptive)
                    Text("This color is locally adaptive!")
                        .foregroundStyle(colorScheme == .light ? .green : .yellow)
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

#Preview {
    DarkModeBootCamp()
        .preferredColorScheme(.dark)
}

#Preview {
    DarkModeBootCamp()
        .preferredColorScheme(.light)
}
