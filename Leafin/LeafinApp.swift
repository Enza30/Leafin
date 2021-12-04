//
//  LeafinApp.swift
//  Leafin
//
//  Created by Farendza Muda on 02/12/21.
//

import SwiftUI

@main
struct LeafinApp: App {
    
    let persistenceController = PersistenceController.shared
    
    @Environment(\.scenePhase) var scenePhase
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
        .onChange(of: scenePhase) {(newScenePhase) in
            switch newScenePhase {
            case .background:
                print("Scene is in background")
                persistenceController.save()
            case .inactive:
                print("Scene is inactive")
            case.active:
                print("Scene is active")
            default:
                print("Apple must have changed something")
            }
        }
    }
}
