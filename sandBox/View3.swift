//
//  View3.swift
//  sandBox
//
//  Created by James Sarmiento on 28/09/22.
//

import SwiftUI

struct View3: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        VStack {
            Text("View 3")
                .padding()
            Button("contador"){
                //TODO
                viewModel.counter += 1
            }
        }
    }
}

struct View3_Previews: PreviewProvider {
    static var previews: some View {
        View3()
    }
}
