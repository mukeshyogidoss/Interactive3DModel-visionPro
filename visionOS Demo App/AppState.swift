//
//  AppState.swift
//  visionOS Demo App
//
//  Created by Intern on 29/12/25.
//

import Foundation
import Combine

class AppState : ObservableObject{  //ObservableObject → “A class that views can watch.”

    @Published var isVolumtericOpen = false // @Published → “A property that says when it changes.”

}

//Watch the class, listen to the property
