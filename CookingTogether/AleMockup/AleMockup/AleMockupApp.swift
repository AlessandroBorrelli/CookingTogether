//
//  AleMockupApp.swift
//  AleMockup
//
//  Created by alessandro borrelli on 15/02/22.
//

import SwiftUI

@main
struct AleMockupApp: App
{
    @StateObject var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)        }
    }
}
