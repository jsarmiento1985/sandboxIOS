
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
        /*.alert(isPresented: $isPresented,content:{
            Alert(title: Text("Suscribete a Swift Beta"),
                  message: Text("Cada semana un nuevo video"),
                  primaryButton:.default(Text("Aceptar"),
                                         action:{
                                            print("Button Tapped")
                                            }),
                  secondaryButton: .destructive(Text("cancelar")))
            })
        .actionSheet(isPresented:$isPresented, content:{
            ActionSheet(title: Text("Aprende Swift UI"),
            message: Text("Elige la opcion que desees:"),
                        buttons: [.default(Text("Swift UI"),
                                           action: {print("aprende swift ui")
                                }),
                                  .default(Text("Xcode")),
                                  .destructive(Text("Cancelar"))
                        ])
        })*/
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
