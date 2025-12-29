//
//  ChamelonWindow.swift
//  visionOS Demo App
//
//  Created by Intern on 29/12/25.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ChamelonWindow: View {
    
    @EnvironmentObject private var appState: AppState
    
    var body: some View {
        RealityView{content in
            
            do{
                let sceneEntity = try await Entity.init(named : "Chamelon" , in : realityKitContentBundle)
                content.add(sceneEntity)
            }
            catch{
                print("Error Occueredddddddd")
            }
        }
        .onDisappear {
            appState.isVolumtericOpen = false
        }
    }
}

#Preview {
    ChamelonWindow()
}


