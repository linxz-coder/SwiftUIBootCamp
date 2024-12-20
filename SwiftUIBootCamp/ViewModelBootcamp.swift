import SwiftUI

struct FruitModel: Identifiable{
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

//当子model向父视图传递object
class FruitViewModel: ObservableObject{
    //Publish与State一样
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init(){
        getFruits()
    }
    
    
    func getFruits(){
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 3)
        
        isLoading = true
        
        //延迟添加数组
        DispatchQueue.main.asyncAfter(deadline: .now()+3){
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        }
    }
    
    func deleteFruit(index: IndexSet){
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {
    
    
    //@State只能用在struct: View中，不能用于class
    //@State var fruitArray: [FruitModel] = []
    
    //StateObject: 当View重新渲染时不更新；ObservedObject：当View渲染时更新
    // @StateObject -> USE THIS ON CREATION / INIT
    // @ObservedObject -> USE THIS FOR SUBVIEW
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationStack{
            List{
                if fruitViewModel.isLoading {
                    ProgressView() //系统自带
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack{
                            Text("\(fruit.count)")
                                .foregroundStyle(.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
                
                
            }
            .listStyle(.grouped)
            .navigationTitle("Fruit List")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink {
                        RandomScreen(fruitViewModel: fruitViewModel)
                    } label: {
                        Image(systemName: "arrow.right")
                            .font(.title)
                    }
                    
                    
                    
                }
            }
//            .onAppear{
//                fruitViewModel.getFruits()
//            }
        }
    }
    
    
}

struct RandomScreen: View {
    
    @Environment(\.dismiss) var dismiss
    @ObservedObject var fruitViewModel: FruitViewModel

    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            
            VStack{
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundStyle(.white)
                        .font(.headline)
                }
            }
            
        }
    }
}

#Preview {
    ViewModelBootcamp()
    //    RandomScreen()
}
