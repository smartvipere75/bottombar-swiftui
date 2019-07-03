# BottomBar-SwiftUI

BottomBar component for SwiftUI inspired by this [concept](https://dribbble.com/shots/5925052-Google-Bottom-Bar-Navigation-Pattern)

![Preview](./preview.gif "Preview")

### Requirements

* Xcode 11
* iOS 13

### Installation

In Xcode go to `File -> Swift Packages -> Add Package Dependency` and paste this repo url `https://github.com/smartvipere75/bottombar-swiftui` then `Next -> Branch: master`  

### Usage

1. `import BottomBar_SwiftUI`
2. Create array of `BottomBarItem` (maximum 4)
3. Create `@State private var selectedIndex` within a View to keep track of `BottomBar` selected index
4. Create `BottomBar`like `BottomBar(selectedIndex: $selectedIndex, items: items)`

### Example

```
import SwiftUI
import BottomBar_SwiftUI

let items: [BottomBarItem] = [
    BottomBarItem(icon: "house.fill", title: "Home", color: .purple),
    BottomBarItem(icon: "heart", title: "Likes", color: .pink),
    BottomBarItem(icon: "magnifyingglass", title: "Search", color: .orange),
    BottomBarItem(icon: "person.fill", title: "Profile", color: .blue)
]

struct BasicView: View {
    let item: BottomBarItem

    var detailText: String {
    "\(item.title) Detail"
}

var followButton: some View {
    Button(action: openTwitter) {
        VStack {
            Text("Developed by Bezhan Odinaev")
                .font(.headline)
                .color(item.color)

            Text("@smartvipere75")
                .font(.subheadline)
                .color(.gray)
        }
    }
}

var destination: some View {
    Text(detailText)
        .navigationBarTitle(Text(detailText))
}

var navigateButton: some View {
    NavigationLink(destination: destination) {
        ZStack {
            Rectangle()
                .fill(item.color)
                .cornerRadius(8)
                .frame(height: 52)
                .padding(.horizontal)

            Text("Navigate")
                .font(.headline)
                .color(.white)
        }
    }
}

func openTwitter() {
    guard let url = URL(string: "https://twitter.com/smartvipere75") else {
        return
    }
    UIApplication.shared.open(url, options: [:], completionHandler: nil)
}

var body: some View {
    VStack {
        Spacer()

        followButton

        Spacer()

        navigateButton
        }
    }
}

struct ContentView : View {
    @State private var selectedIndex: Int = 0

    var selectedItem: BottomBarItem {
        items[selectedIndex]
    }

var body: some View {
        NavigationView {
            VStack {
                BasicView(item: selectedItem)
                    .navigationBarTitle(Text(selectedItem.title))
                BottomBar(selectedIndex: $selectedIndex, items: items)
            }
        }
    }
}
```

### Extra

Follow me on [Twitter](https://twitter.com/smartvipere75) for latest updates.
