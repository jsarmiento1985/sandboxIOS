//
//  principal.swift
//  sandBox
//
//  Created by James Sarmiento on 28/09/22.
//

import SwiftUI

struct principal: View {
    @State var name:String = ""
    @AppStorage ("appStorageName") var appStorageName:String = ""
    
    var body: some View {
        Form{
            TextField("UserName", text: $name)
            HStack{
                Spacer()
                Button("Guardar"){
                    appStorageName = name
                }
                .padding()
               Spacer()
                
            }
            HStack{
                Spacer()
                Button("Imprimir valor"){
                    print(UserDefaults.standard.string(forKey: "appStorageName"))
                }
                .padding()
               Spacer()
                
            }
        }
        .onAppear{
            name = appStorageName
        }
  
    }
}

struct principal_Previews: PreviewProvider {
    static var previews: some View {
        principal()
    }
}
