//
//  TabBar.swift
//  InteractiveX
//
//  Created by Yashwant Sheshkar on 30/06/24.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            Home().tabItem{
                Image(systemName: "play.circle.fill")
                Text("Home")
            }
            ContentView().tabItem{
                Image(systemName: "rectangle.stack.fill")
                Text("Certificates")
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct TabBar_Previews: PreviewProvider{
    static var previews: some View{
        Group{
            TabBar().previewDevice("iPhone 8")
            TabBar().previewDevice("iPad")
        }
    }
}



