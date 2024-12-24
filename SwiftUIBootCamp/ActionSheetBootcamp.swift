import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showConfirmationDialog: Bool = false
    
    @State var who: String = "me"
    
    @State var backgroundColor = Color.green
    
    var body: some View {
        //        Button("Click me") {
        //            showConfirmationDialog.toggle()
        //        }
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            VStack {
                HStack{
                    Circle()
                        .frame(width: 30, height: 30)
                    Text("@username")
                    Spacer()
                    Button {
                        who = "others"
                        showConfirmationDialog.toggle()
                    } label: {
                        Image(systemName: "ellipsis")
                    }
                    .tint(.primary)
                }
                .padding(.horizontal)
                
                Rectangle()
                    .aspectRatio(1.0, contentMode: .fit)
                
            }
            .confirmationDialog("Do you really want to delete the item?", isPresented: $showConfirmationDialog, titleVisibility: .visible) {
                //            Button("cancel", role: .cancel){}
                //            Button("delete", role: .destructive) {}
                if(who=="me"){
                    Button("Delete"){backgroundColor = .red}
                }else{
                    Button("Share"){backgroundColor = .yellow}
                    Button("Report"){backgroundColor = .blue}
                }
            } message: {
                Text("The action cannot be undone.")
            }
        }
    }}

#Preview {
    ActionSheetBootcamp()
}
