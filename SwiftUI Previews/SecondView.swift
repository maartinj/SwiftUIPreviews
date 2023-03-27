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

struct SecondView: View {
    @Binding var counter: Int
    var body: some View {
        VStack {
            Circle()
                .foregroundColor(.accentColor)
                .overlay {
                    Text("\(counter)")
                        .font(.system(size: 300))
                        .foregroundColor(.white)
                        .minimumScaleFactor(0.2)
                }
                .onTapGesture {
                    counter += 1
                }
                .padding()
            StewartLynchView()
        }
        .navigationTitle("Second View")
    }
}

// Editor -> Create Preview

struct Previews_SecondView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NavigationStack {
                PreviewView()
            }
            .previewDisplayName("Portrait")
            
            NavigationStack {
                SecondView(counter: .constant(1))
            }
            .previewInterfaceOrientation(.landscapeRight)
            .previewDisplayName("Landscape")
            
            NavigationStack {
                SecondView(counter: .constant(1))
            }
            .previewDevice(PreviewDevice(rawValue: "iPhone SE (3rd generation)"))
            .previewDisplayName("iPhone SE")
        }
    }
    
    struct PreviewView: View {
        @State private var counter = 1
        var body: some View {
            SecondView(counter: $counter)
        }
    }
}
