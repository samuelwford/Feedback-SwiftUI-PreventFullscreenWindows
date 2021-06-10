#  Prevent FullScreen Windows

In order to show a macOS window that is more in line with a "utility app" as described in the Human Interface Guidelines 
[Full-Screen Mode](https://developer.apple.com/design/human-interface-guidelines/macos/app-architecture/fullscreen-mode/) 
section, it may be necessary to:

1. Prevent full screen windows by adding the `.fullScreenNone` window behavior and disabling the zoom button
2. Set the `tabbingMode` to `.disallowed` to prevent window tabs.

The current SwiftUI capabilities of `View` and `Scene` do not offer options to control this behavoir.

This project shows an example of the desired behavior by leveraging the underlying `NSWindow` class. The hope is that this will
become a supported API in SwiftUI on macOS.
