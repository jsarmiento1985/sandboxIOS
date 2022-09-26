//
//  ContentView.swift
//  sandBox
//
//  Created by James Sarmiento on 23/09/22.
//

import SwiftUI

struct ContentView: View {
    @State var userName : String = ""
    @State var userPass : String = ""
    @State var textEditor : String = "Escribe algo"
    @State var counter = 0
    @State var currentDate: Date = Date()
    @State var deviceName: String = "Iphone 14 Pro Max"
    @State var isNetworkOn: Bool = true
    @State var date: Date = Date()
    @State var color: Color = .blue
    
    var body: some View {
        VStack {
            Button {
                print("suscribete a swift beta")
            } label: {
                Text("Suscríbete".uppercased())
                    .font(.largeTitle)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
                    .shadow(radius: 10)
        }
            
            
            
            Button {
             print("Dale like al video")
            } label: {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 200, height: 200)
                    .shadow(radius: 10)
                    .overlay(Image(systemName: "hand.thumbsup.fill")
                        .foregroundColor(.white)
                        .font(.system(size: 70, weight: .bold))
                    )
            }

            VStack {
                TextField("UserName", text: $userName)
                    .keyboardType(.emailAddress)
                    .disableAutocorrection(true)
                    .padding(8)
                    .font(.headline)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(6)
                    .padding(.horizontal,60)
                    .padding(.top,40)
                    .onChange(of: userName) { value in
                       print("new value \(value)")
                    }
                
                SecureField("Password", text: $userPass)
                    .keyboardType( .default)
                    .disableAutocorrection(true)
                    .autocapitalization(.none)
                    .padding(8)
                    .font(.headline)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(6)
                    .padding(.horizontal,60)
                    .onChange(of: userPass) { value in
                        print("Password value \(value)")
                    }
                
                TextEditor(text: $textEditor)
                    .font(.title)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .foregroundColor(Color.blue)
                    .padding()
                    .onChange(of: textEditor) { value in
                        counter = value.count
                    }
                Form{
                    DatePicker("fecha", selection: $currentDate, in: Date()..., displayedComponents: .date)
                    Text(currentDate, style: .date)
                        .bold()
                }
                
                Text("\(counter)")
                    .foregroundColor(counter <= 280 ? .green : .red)
                    .font(.largeTitle)
                
                
            }
            
            Form{
                Section(header: Text("Settings")){
                    TextField("DEVICE NAMES", text: $deviceName)
                    Toggle("Wifi", isOn: $isNetworkOn)
                }
                
                Section(header: Text("Acount"),
                footer:
                    HStack{
                        
                        Label("Version 1.0", systemImage: "iphone")
                        
                    
                }){
                    DatePicker("Date", selection: $date)
                    ColorPicker("Color",selection: $color)
                }
                    
                    
                
                   
                
            
   
            }
           
            
            //Spacer()
            
            
        }
        
     
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
