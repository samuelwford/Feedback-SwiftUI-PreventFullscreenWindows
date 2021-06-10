//
//  Feedback_SwiftUI_PreventFullscreenWindowsApp.swift
//  Feedback-SwiftUI-PreventFullscreenWindows
//
//  Created by Samuel Ford on 6/10/21.
//

import SwiftUI

@main
struct Feedback_SwiftUI_PreventFullscreenWindowsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                // WORKAROUND: custom view extension to access the window the view is placed
                //             into and modify it's style to prevent full screen
                .preventFullScreenWindow()
                // WORKAROUND: custom view extension to access the window the view is placed
                //             into and modify it's tabbing mode
                .window(tabbingMode: .disallowed)
        }
        // ISSUE: there is no window style that prevents zoom/full screen
        //        nor is there a way to create a custom one to do that
        // ISSUE: there is also no style to set tabbing mode
        .windowStyle(HiddenTitleBarWindowStyle())
    }
}
