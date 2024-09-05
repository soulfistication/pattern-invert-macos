//
//  pattern_invert_macosApp.swift
//  pattern-invert-macos
//
//  Created by Iván Almada on 5/4/24.
//

import SwiftUI

@main
struct pattern_invert_macosApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(viewIsBlack: true)
                .frame(width: Config.width, height: Config.height)
        }
    }
}
