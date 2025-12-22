//
//  FullImmersiveaPage.swift
//  visionOS Demo App
//
//  Created by Intern on 22/12/25.
//

import SwiftUI
import RealityKit
import RealityKitContent
import os



struct FullImmersivePage: View {
    var body: some View {
        RealityView { content in
            
            
            do{
                // Only add if catEntity is nil
                   
                let sceneEntity = try await Entity.init(named : "Cat" , in: realityKitContentBundle)
                
                
                // Place cat in front of the user
               sceneEntity.position = [0, -0.2, -7.5]

               // scale if needed
               sceneEntity	.scale = [1, 1, 1]

                content.add(sceneEntity)
            }
            catch{
                logger.error("\(error.localizedDescription)")
            }
            
        }
    }
}

#Preview {
    FullImmersivePage()
}
