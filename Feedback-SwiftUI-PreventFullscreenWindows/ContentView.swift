//
//  ContentView.swift
//  Feedback-SwiftUI-PreventFullscreenWindows
//
//  Created by Samuel Ford on 6/10/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("I am a Utility App window, like Calculator or System Preferences, that is a fixed size and should not support fullscreen either from the Zoom button or the Enter Full Screen menu.")
            .lineLimit(10)
            .frame(width: 300, height: 200, alignment: .center)
            .padding()
            .fixedSize()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
