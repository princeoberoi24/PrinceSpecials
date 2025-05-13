//
//  PrinceSpecialsApp.swift
//  PrinceSpecials
//
//  Created by mac on 27/04/25.
//

import SwiftUI

@main
struct PrinceSpecialsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            LoginView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
