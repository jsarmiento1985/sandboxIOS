
import SwiftUI



struct ContentView: View {
    @State var isPresented:Bool = false
    
    var body: some View {
        VStack{
            Text("Suscribete a Swift beta")
                .padding()
            Button("Aceptar"){
                isPresented = true
            }
            
        }
        .alert(isPresented: $isPresented,content:{
            Alert(title: Text("Suscribete a Swift Beta"),
                  message: Text("Cada semana un nuevo video"),
                  primaryButton:.default(Text("Aceptar"),
                                         action:{
                                            print("Button Tapped")
                                            }),
                  secondaryButton: .destructive(Text("cancelar")))
            })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
