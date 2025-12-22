//
//  ContentView.swift
//  visionOS Demo App
//
//  Created by Intern on 19/12/25.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ContentView: View {
    
    @Environment(\.openWindow) var openWindow123

    var body: some View {
        
        
        Button("Open 3D Cat Model"){
            openWindow123(id: "volumetricCat")
        }
        
    }
       
}

#Preview(windowStyle: .automatic) {
    ContentView()
       
}
