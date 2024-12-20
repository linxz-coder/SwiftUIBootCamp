import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView{
            ScrollView {
                NavigationLink("Hello, World!") {
                    MyOtherScreen()
                }
                
                Text("Hello")
                Text("Hello")
                Text("Hello")
          
            }
            .navigationTitle("All Inboxes")
            .toolbar {
                //左图标
                ToolbarItem(placement: .topBarLeading) {
                    
                    HStack {
                        NavigationLink {
                            Text("MyContacts")
                        } label: {
                            Image(systemName: "person.fill")
                        }
                        .tint(.red)
                        
                        Image(systemName: "flame.fill")
                    } //图标颜色，.accentColor已弃用

                }
                
                //右图标
                ToolbarItem(placement: .topBarTrailing) {
                    
                    NavigationLink {
                        Text("Settings")
                    } label: {
                        Image(systemName: "gear")
                    }
                    
                }
                
            }
                
            
            //            .navigationBarTitleDisplayMode(.inline) //居中小标题
            //            .navigationBarHidden(true) //标题栏隐藏，仅需使用NavigationLink时用
        }
    }
}

//子视图无需用NavigationView即可使用NavigationLink等特性
struct MyOtherScreen: View{
    
    //注意：presentMode已经弃用
    @Environment(\.dismiss) var dismiss
    
    var body: some View{
        ZStack{
            Color.green.ignoresSafeArea()
                .navigationTitle("Green Screen")
            
            VStack {
                Button("Back Button") {
                    dismiss()
                }
                
                NavigationLink("Click here"){
                    Text("Third Screen")
                }
                
                NavigationLink {
                    Text("Book")
                } label: {
                    Image(systemName: "book.fill")
                }
            }
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
