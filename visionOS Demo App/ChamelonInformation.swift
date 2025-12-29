//
//  ChamelonInformation.swift
//  visionOS Demo App
//
//  Created by Intern on 29/12/25.
//

import SwiftUI

struct ChamelonInformation: View {
    var body: some View {
        VStack{
         Text("About Chamelon")
             .font(.largeTitle)
            
         Text("They feature zygodactyl feet for gripping branches, prehensile tails acting as a fifth limb, independently rotating eyes providing 360-degree vision, and a long, sticky projectile tongue that shoots out at high speed—up to twice body length—to capture insects and small prey.")
             .font(.subheadline)
         
         Text("Behavior and Habitat")
             .font(.largeTitle)
         
         Text("Primarily Old World species from Africa (especially Madagascar, home to over half), they sway while moving to mimic leaves, display brighter colors when aggressive, and fluoresce under UV in some cases. Over 200 species exist, mostly tree-dwelling ambush predators.")
             .font(.subheadline)
        }
        .frame(width : 700 , height:  700)

    }
}

#Preview {
    ChamelonInformation()
}
