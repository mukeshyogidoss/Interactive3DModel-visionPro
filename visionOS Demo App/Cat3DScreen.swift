//
//  Cat3DScreen.swift
//  visionOS Demo App
//
//  Created by Intern on 20/12/25.
//

import SwiftUI
import RealityKit
import RealityKitContent

import os

public let logger = Logger()



 //Loading 3D Cat Here
struct Cat3DScreen: View {
    var body: some View {
        RealityView { content in
            
            do{
                let sceneEntity = try await Entity.init(named : "Cat" , in: realityKitContentBundle)
                content.add(sceneEntity)
            }
            catch{
                logger.error("\(error.localizedDescription)")
            }
            
        }
    }
}

#Preview {
    Cat3DScreen()
}
