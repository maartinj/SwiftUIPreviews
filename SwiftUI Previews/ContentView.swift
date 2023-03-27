//
// Created for SwiftUI Previews
// by  Stewart Lynch on 2023-01-29
// Using Swift 5.0
// Running on macOS 13.2
// 
// Folllow me on Mastodon: @StewartLynch@iosdev.space
// Or, Twitter, if it still exits: https://twitter.com/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

struct ContentView: View {
    @State private var counter = 1
    var body: some View {
        NavigationStack{
            VStack {
                NavigationLink("Counter View \(counter)", value: false)
                    .buttonStyle(.borderedProminent)
                    .font(.largeTitle)
            }
            .navigationDestination(for: Bool.self) { _ in
                SecondView(counter: $counter)
            }
            .navigationTitle("SwiftUI Previews")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
