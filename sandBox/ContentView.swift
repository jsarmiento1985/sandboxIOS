//
//  ContentView.swift
//  sandBox
//
//  Created by James Sarmiento on 23/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
    
            VStack(alignment:.leading, spacing: 15) {
                Text("Siguiendo")
                    .font(.largeTitle)
                    .bold()
                Text("Canales recomendados").foregroundColor(.gray)
                HStack {
                    Rectangle()
                        .foregroundColor(.blue)
                    .frame(width:118, height:68)
                    
                    VStack (alignment: .leading) {
                        HStack {
                            Circle().frame(width:20, height: 20).foregroundColor(.red)
                            Text("Username").bold().font(.headline)
                        }
                        Text("Streaming de programacion...").bold().foregroundColor(.gray)
                        Text("Solo hablando").bold().foregroundColor(.gray)
                    }
                    
                }
          
            }
            Text("Suscribir a SwiftBeta")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.red)
                .underline()
                .background(Color.black)
                .rotationEffect(.degrees(-20))
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
