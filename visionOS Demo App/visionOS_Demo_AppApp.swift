//
//  visionOS_Demo_AppApp.swift
//  visionOS Demo App
//
//  Created by Intern on 19/12/25.
//

import SwiftUI

@main
struct visionOS_Demo_AppApp: App {

    @StateObject var appState = AppState()
    

    var body: some Scene {
        WindowGroup {
            if appState.isVolumtericOpen {
                ChamelonInformation()
            }
            else{
                ContentView()
            }
              
        }
        .windowResizability(.contentSize)
        .environmentObject(appState)
        
        WindowGroup(id : "ChamelonWindow"){
            ChamelonWindow()
        }
        .windowStyle(.volumetric)
        .defaultSize(width : 0.6 , height : 0.6 , depth:  0.6 , in : .meters)
        .environmentObject(appState)
            
        
        
       
    
    }
}
