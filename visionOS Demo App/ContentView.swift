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
    @Environment(\.openImmersiveSpace) var openImmersiveSpace123
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace

    var body: some View {
        
        
        Button("Open 3D Cat Model"){
            openWindow123(id: "volumetricCat")
        }
        
        Button("Open in Immersive Space"){
            Task{
                await dismissImmersiveSpace()
                await openImmersiveSpace123(id: "fullImmersive")
            }
        }
        
    }
       
}

#Preview(windowStyle: .automatic) {
    ContentView()
       
}
