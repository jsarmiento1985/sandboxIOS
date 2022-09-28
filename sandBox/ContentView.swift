
import SwiftUI



struct ContentView: View { 
    @State private var counter: Int = 0
    
    var body: some View {
        VStack{
            Text("Contador: \(counter)")
                .bold()
                .font(.largeTitle)
                .padding()
            
            Button("Incrementar Contador"){
                counter += 1
            }
            ListVideos()
            Spacer()
        }
        
    }
}

struct ListVideos: View {
    
    @StateObject private var videoViewModel = VideoViewModel()
    
    var body: some View {
        NavigationView{
            List(videoViewModel.videosModel,id:\.self){ video in
                Text(video)
            }
            .navigationTitle("SwiftBeta Videos")
            .navigationBarItems(leading:
                Button("añadir", action: videoViewModel.addMoreTopics))
        }
  
    }
    
 
}

final class VideoViewModel: ObservableObject{
 @Published var videosModel:[String] = []
    
    init() {
        videosModel = [
            "Aprende SwiftUI",
            "Aprende Swift Code",
            "Aprende Xcode"]
    }
    
    func addMoreTopics(){
        videosModel.append("Aprende CI/CD")
        videosModel.append("Aprende Git")
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
