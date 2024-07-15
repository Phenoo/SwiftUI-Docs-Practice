//
//  SwiftDocsTutorialApp.swift
//  SwiftDocsTutorial
//
//  Created by Eze Chidera Paschal on 14/07/2024.
//

import SwiftUI

@main
struct SwiftDocsTutorialApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
