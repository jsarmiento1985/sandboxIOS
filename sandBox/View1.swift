
import SwiftUI


final class ViewModel: ObservableObject{
   @Published var counter: Int = 0
}

struct View1: View {
    
    @StateObject var viewModel = ViewModel()
    
    var body: some View {
        VStack {
            Text("Counter: \(viewModel.counter)")
                .bold()
                .font(.largeTitle)
            
            Text("View 1")
                .padding()
            View2()
        }
        .environmentObject(viewModel)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        View1()
    }
}
