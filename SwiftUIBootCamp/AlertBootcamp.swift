//
//  AlertBootcamp.swift
//  SwiftUIBootCamp
//
//  Created by 林晓中 on 2024/12/23.
//

import SwiftUI

struct AlertBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var backgroundColor: Color = .yellow
    @State var alertTitle: String = ""
    @State var alertMessage: String = ""
//    @State var alertType: MyAlerts? = nil
    
//    enum MyAlerts{
//        case success
//        case error
//    }
    
    var body: some View {
        ZStack {
            
            backgroundColor
                .ignoresSafeArea(.all)
            
            VStack {
                Button {
                    alertTitle = "Error Uploading videos"
                    alertMessage = "The video could not be uploaded."
                    showAlert.toggle()
                } label: {
                    Text("BUTTON Failed")
                }
                
                Button {
                    alertTitle = "Successfully uploaded the video 🥳"
                    alertMessage = "Your video is now public!"
                    showAlert.toggle()
                } label: {
                    Text("Button Success")
                }
            }

//            .alert("Some Alert", isPresented: $showAlert) {
//                Button("Cancel", role: .cancel){
//                }
//                Button("Delete", role: .destructive) {
//                    backgroundColor = .red
//                }
//            } message: {
//                Text("What do you want?")
//            }
            
            .alert(alertTitle, isPresented: $showAlert) {
            } message: {
                Text(alertMessage)
            }
            
        }
        
        
    }
}

#Preview {
    AlertBootcamp()
}
