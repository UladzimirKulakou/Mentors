//
//  MentorsApp.swift
//  Mentors
//
//  Created by Владимир  on 26.03.23.
//

import SwiftUI

@main
struct MentorsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
