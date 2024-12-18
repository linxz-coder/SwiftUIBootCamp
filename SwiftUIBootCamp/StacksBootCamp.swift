/*
 Vstacks -> Vertical
 Hstacks -> Horizontal
 Zstacks -> zIndex (back to front)
 
 */

import SwiftUI

struct StacksBootCamp: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20){
            Text("5")
                .font(.largeTitle)
                .underline()
            
            Text("Items in your cart:")
                .font(.caption)
                .foregroundColor(.gray)

        }
    }
}

#Preview {
    StacksBootCamp()
}
