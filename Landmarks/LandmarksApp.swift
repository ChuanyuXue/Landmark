//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Chuanyu on 2023/5/13.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(ModelData())
        }
    }
}
