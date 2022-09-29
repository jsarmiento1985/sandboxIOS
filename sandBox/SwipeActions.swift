//
//  SwipeActions.swift
//  sandBox
//
//  Created by James Sarmiento on 29/09/22.
//

import SwiftUI

struct Device{
    let name: String
    let systemImage: String
}

let arrayOfDevices = [
    Device(name: "Iphone", systemImage: "iphone"),
    Device(name: "Ipad", systemImage: "ipad"),
    Device(name: "Pc", systemImage: "pc"),
    Device(name: "4k", systemImage: "4k.tv"),
    Device(name: "Ipod", systemImage: "ipod"),
    Device(name: "Laptop", systemImage: "laptopcomputer"),

]

struct SwipeActions: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(arrayOfDevices, id: \.name){ device in
                    Label(device.name,systemImage: device.systemImage)
                        .swipeActions {
                            Button{
                                print("Favorito")
                            }label: {
                                Label("Favorito",systemImage: "star.fill")
                            }
                            .tint(.blue)
                            
                            Button{
                                print("Compartir")
                            }label: {
                                Label("Compartir",systemImage: "square.and.arrow.up")
                            }
                            .tint(Color.red)
                        }
                        .swipeActions(edge: .leading){
                            Button{
                                print("Borrar")
                            }label: {
                                Label("Borrar",systemImage: "trash.fill")
                            }
                            .tint(Color.red)
                        }
                }
                
            }
            .refreshable {
                print("Recargar informacion")
            }
            .navigationTitle("Devices")
        }
    }
}

struct SwipeActions_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActions()
    }
}
