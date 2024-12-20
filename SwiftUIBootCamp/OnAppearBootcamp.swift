//
//  OnAppearBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by linxiaozhong on 2024/12/20.
//

import SwiftUI

struct OnAppearBootcamp: View {
    
    @State var myText: String = "Start text."
    @State var count: Int = 0
    
    var body: some View {
        NavigationStack{
            ScrollView{
                Text(myText)
                LazyVStack{
                    ForEach(0..<50) { _ in
                        RoundedRectangle(cornerRadius: 25.0)
                            .frame(height: 200)
                            .padding()
                            .onAppear{
                                count += 1
                            }
                    }
                }
            }
            .navigationTitle("On Appear: \(count)")
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    myText = "This is the new text!"
                }
            }
            .onDisappear {
                myText = "Ending Text."
            }
        }
    }
}

#Preview {
    OnAppearBootcamp()
}
