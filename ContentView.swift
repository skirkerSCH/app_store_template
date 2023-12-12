import SwiftUI

struct ContentView: View {
    var body: some View {
        // TabView allows for navigation from a bottom tab bar
        TabView {
            AppListingView()
                .tabItem {
                    Label("Today", systemImage: "doc.text.image.fill")
                }
            Text("Games")
                .tabItem {
                    Label("Games", systemImage: "gamecontroller.fill")
                }
            Text("Notification")
                .tabItem {
                    Label("Notification", systemImage: "square.stack.3d.up")
                }
            Text("Arcade")
                .tabItem {
                    Label("Arcade", systemImage: "circle.square")
                    
                }
            Text("Search")
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
        }
        
    }
}
