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

struct StewartLynchView: View {
    var body: some View {
        HStack {
            Image("StewartLynch")
                .resizable()
                .scaledToFit()
                .frame(width: 100)
            VStack(alignment: .leading) {
                Text("https://www.createchsol.com")
                    .font(.largeTitle)
                Text("https://youtube.com/@StewartLynch")
                Text("https://twitter.com/StewartLynch")
                Text("https://iosdev.space/@StewartLynch")
            }
            .foregroundColor(.primary)
            .font(.caption)
        }
        .padding()
    }
}

struct StewartLynchView_Previews: PreviewProvider {
    static var previews: some View {
        StewartLynchView()
//            .previewLayout(.fixed(width: 300, height: 100))
            .previewLayout(.sizeThatFits)
    }
}
