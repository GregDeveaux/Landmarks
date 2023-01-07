//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Greg-Mini on 07/01/2023.
//

import SwiftUI

@main
struct LandmarksApp: App {

    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}

struct Previews_LandmarksApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
