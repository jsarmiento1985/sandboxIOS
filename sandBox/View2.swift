//
//  View2.swift
//  sandBox
//
//  Created by James Sarmiento on 28/09/22.
//

import SwiftUI


struct View2: View {
    //@ObservedObject var viewModel:ViewModel
    
    var body: some View {
        Text("View 2")
            .padding()
        View3()
    }
}

struct View2_Previews: PreviewProvider {
    static var previews: some View {
        View2()
    }
}
