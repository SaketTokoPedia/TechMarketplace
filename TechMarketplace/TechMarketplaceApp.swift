//
//  TechMarketplaceApp.swift
//  TechMarketplace
//
//  Created by Rajmani Kushwaha on 26/08/23.
//

import SwiftUI

@main
struct TechMarketplaceApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            OnboardingView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
