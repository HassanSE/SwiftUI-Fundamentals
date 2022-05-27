# SwiftUI-Fundamentals
An entry level course from Sean Allen on SwiftUI

## Key points
- Everything in SwiftUI is a `View`.
- Each modifier wraps the original view in another view.
- This is why order of the modifiers matters.
- Compared to UIKit, views are so cheap in SwiftUI that they are destroyed and recreated all the time.
-  10 is the max amount of subviews you can have in SwiftUI.

- SwiftUI is declarative, and therefore, requires every state of the UI to be implemented upfront.
- SwiftUI uses view tree structure to render the change in data.
- A tree diff-ing algorithm scans the view tree to only update the specific view(s) that are/should be affected by the data change. The body of this affect view is then redrawn.

- @ViewBuilder is the closure that is used to provide content for the view you're defining.

