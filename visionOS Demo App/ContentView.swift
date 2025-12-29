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
    @EnvironmentObject private var appState : AppState
    
    
    @State var showChamelon = false
    
   
    var body: some View {
        
        VStack{
            Button("Open Chamelon"){
                appState.isVolumtericOpen.toggle()
               openWindow123(id: "ChamelonWindow")
            }
            
        }.frame(width : 200 , height : 200)
            
        
      
    }
       
}
#Preview(windowStyle: .automatic) {
    ContentView()
       
}
