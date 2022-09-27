
/**
 import SwiftUI

struct Device{
    let title:String
    let imageName:String
}

let home = [
    Device(title: "Laptop",imageName:"laptopcomputer"),
    Device(title: "mac mini",imageName:"macmini"),
    Device(title: "Mac Pro",imageName:"macpro.gen3"),
    Device(title: "Displays",imageName:"display.2"),
    Device(title: "Apple tv",imageName:"appletv")
]

let work = [
    Device(title: "Iphone",imageName:"iphone"),
    Device(title: "Ipad",imageName:"ipad"),
    Device(title: "Airpods",imageName:"airpods"),
    Device(title: "AppleWatch",imageName:"applewatch")
]

struct ContentView: View {
    var body: some View {
     
        List{
            Section(header: Text("HOME")){
                ForEach(home,id: \.title) { device in
                    Label(device.title,systemImage: device.imageName)
                }
            }
            
            Section(header: Text("WORK")){
                ForEach(work,id: \.title) { device in
                    Label(device.title,systemImage: device.imageName)
                }
            }
        }.listStyle(InsetGroupedListStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 */

