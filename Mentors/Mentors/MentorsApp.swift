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
    @State static var text = ""
    var body: some Scene {
        WindowGroup {
            LogInView(text: MentorsApp.text)
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
