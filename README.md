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

## Hashable & Identifiable
- When you are using a custom model for data binding, SwiftUI requires your model to conform to Hashable to keep track of uniqueness and update the UI according to the update in data.
- If you additional conform to Identifiable, SwiftUI would look for a property named `id` on your model and you don't have to specify the KeyPath yourself.

## @ObservableObject
- In SwiftUI, you usually conform your ViewModel to ObservableObject.
- What it allows is to publish the change in its state.
- The views listening to ViewModel can therefore change their state.

## @StateObject vs @ObservedObject
- @StateObject is used when you initialize an object, however, @ObservedObject is used when you inject an object.
- Why do we use @StateObject property wrapper? Because in SwiftUI, views are lightweight and disposed and recreated all the time. This property wrapper preserves the state of the underlying object while the view is recreated.

## @Published
- You add this wrapper to those properties that needs to announce the change in their state to the views and in turn force them to reload.

