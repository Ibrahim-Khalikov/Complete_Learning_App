//
//  Complete_Learning_AppApp.swift
//  Complete_Learning_App
//
//  Created by cloud_vfx on 12/08/21.
//

import SwiftUI

@main
struct Complete_Learning_AppApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(ContentModel())
                
    
        }

    }
}
