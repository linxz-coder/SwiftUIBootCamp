/*
 
 1.EnviromentObject是StateObject和ObservedObject的升级版；
 2.特点是可以全局访问；
 
 */

import SwiftUI

class EnvironmentViewModel: ObservableObject{
    
    @Published var dataArray: [String] = []
    
    init(){
        getData()
    }
    
    func getData(){
//        self.dataArray.append("iPhone")
//        self.dataArray.append("iPad")
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "Mac", "Apple watch"])
        
    }
}

struct EnvironmentObjectBootCamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.dataArray, id: \.self){ item in
                    NavigationLink {
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                    }

                }
            }
            .navigationTitle("iOS Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View{
    
    let selectedItem: String
//    @ObservedObject var viewModel: EnvironmentViewModel
    
    var body: some View{
        ZStack{
            //background
            Color.orange.ignoresSafeArea()
            
            NavigationLink {
//                FinalView(viewModel: viewModel)
                FinalView()
            } label: {
                //foreground
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(.white)
                    .cornerRadius(30)
            }
        }
    }
}

struct FinalView: View{
    
//    @ObservedObject var viewModel: EnvironmentViewModel
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View{
        ZStack{
            //background
            LinearGradient(gradient: Gradient(colors: [.green, .teal]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            //foreground
            ScrollView{
                VStack(spacing: 20){
                    ForEach(viewModel.dataArray, id: \.self){ item in
                        Text(item)
                        
                    }
                }
                .foregroundStyle(.white)
                .font(.largeTitle)
            }
        }
    }
}

#Preview {
    EnvironmentObjectBootCamp()
//    DetailView(selectedItem: "iPhone")
//    FinalView()
}
