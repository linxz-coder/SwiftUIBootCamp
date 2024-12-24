import SwiftUI

struct ColorsBootcamp: View {
    var color = #colorLiteral(red: 0, green: 0.9914394021, blue: 1, alpha: 1)
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(width: 300, height: 200)
//            .foregroundStyle(.primary)
        //MARK: - UIColor => Color from UIKit
//            .foregroundStyle(Color(uiColor: .secondarySystemBackground))
        //MARK: - 自定义颜色
            .foregroundStyle(.custom)
        //MARK: - 阴影
            .shadow(radius: 10)
            .shadow(color: .custom.opacity(0.3) ,radius: 10, x: -20, y: -20)
    }
}

#Preview {
    ColorsBootcamp()
}
