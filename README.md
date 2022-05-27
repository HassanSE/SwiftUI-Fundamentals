# SwiftUI-Fundamentals
An entry level course from Sean Allen on SwiftUI

## Key points
- Everything in SwiftUI is a `View`.
- This is why order of the modifiers matters.
- Compared to UIKit, views are so cheap in SwiftUI that they are destroyed and recreated all the time.
-  10 is the max amount of subviews you can have in SwiftUI.

## How Views are updated
- SwiftUI is declarative, and therefore, requires every state of the UI to be implemented upfront.
- SwiftUI uses view tree structure to render the change in data.
- A tree diff-ing algorithm scans the view tree to only update the specific view(s) that are/should be affected by the data change. The body of this affect view is then redrawn.

## @ViewBuilder
- @ViewBuilder is the closure that is used to provide content for the view you're defining.
- Marking this closure as @ViewBuilder limits the scope of things you can do within it. However, with each new iOS update, more and more items are being added to @ViewBuilder.

## Modifiers
- Each modifier wraps the original view in another view.
- When you are adding a modifier to the view, keep in mind that it does not get added directly on the original view. Instead, each modifier is added to the combined result of previously used modifiers on the view.

