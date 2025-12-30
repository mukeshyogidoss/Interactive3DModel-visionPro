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
    @State private var rotateBy : Double = 0.0
    
    
    @State private var sceneEntity: Entity?//
    @State private var rotationX: Float = 0
    @State private var rotationY: Float = 0
    
    
    
    var body: some View {
        
       
        RealityView{content in
            
            do{
                let entity = try await Entity.init(named : "Chamelon" , in : realityKitContentBundle)
                entity.scale *= SIMD3<Float>(repeating: 1.6) // repeating means it applies for all x, y , z
                entity.generateCollisionShapes(recursive: true)
                entity.components.set(InputTargetComponent())
                content.add(entity)
                
                sceneEntity = entity
            }
            catch{
                print("Error Occured")
            }
        }
        .rotation3DEffect(.radians(rotateBy) , axis: .x)
        .gesture(
            DragGesture(minimumDistance:  0.0)
                .targetedToAnyEntity()
                .onChanged{ value in
//                    let location3D = value.convert(value.location3D, from: .local, to: .scene)
//                    let startLocation = value.convert(value.startLocation3D ,from : .local , to : .scene)
//                        let delta = location3D - startLocation
//                    
//                    rotateBy = Double(atan(delta.y * 3))
                    
                    guard let entity = sceneEntity else { return }

                                // horizontal drag → Y rotation (left/right)
                                let deltaY = Float(value.translation.width) * 0.0002
                                // vertical drag → X rotation (up/down)
                                let deltaX = Float(value.translation.height) * -0.0002

                                rotationY += deltaY
                                rotationX -= deltaX

                                // Optional: clamp X rotation to prevent flipping
                                rotationX = min(max(rotationX, -Float.pi/2), Float.pi/2)

                                // Combine rotations
                                let rotY = simd_quatf(angle: rotationY, axis: SIMD3<Float>(0,1,0))
                                let rotX = simd_quatf(angle: rotationX, axis: SIMD3<Float>(1,0,0))
                                entity.transform.rotation = rotY * rotX
                    
                }
        )
        .onDisappear {
            appState.isVolumtericOpen = false
        }
    }
}

#Preview {
    ChamelonWindow()
}


