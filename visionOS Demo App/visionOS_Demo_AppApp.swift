//
//  visionOS_Demo_AppApp.swift
//  visionOS Demo App
//
//  Created by Intern on 19/12/25.
//

import SwiftUI

@main
struct visionOS_Demo_AppApp: App {

    @State private var appModel = AppModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(appModel)
        }
        
        
        
        //Sertting Volumetric window here
        WindowGroup(id : "volumetricCat"){
            Cat3DScreen()
        }
        .windowStyle(.volumetric)
        .defaultSize(width : 800 , height : 820 , depth : 2)
    }
}
