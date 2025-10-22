//
//  iTourApp.swift
//  iTour
//
//  Created by Utkarsh  Mehta on 22/10/25.
//

import SwiftData
import SwiftUI

@main
struct iTourApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Destination.self)
    }
}
