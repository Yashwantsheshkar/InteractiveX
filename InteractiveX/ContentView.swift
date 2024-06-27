//
//  ContentView.swift
//  InteractiveX
//
//  Created by Yashwant Sheshkar on 27/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            VStack {
                Spacer()
            }
            .frame(width: 300, height: 220)
            .background(Color.blue)
            .cornerRadius(20)
            .shadow(radius: 20)
            .offset(x: 0, y: -20)
            
            VStack {
                HStack {
                    VStack(alignment: .leading) {
                        Text("UI design")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                        
                        Text("Certificate")
                            .foregroundStyle(Color("accent"))
                    }
                    .padding(.top, 20.0)
                    Spacer()
                    Image("Logo1")
                }
                .padding(.horizontal, 20.0)
                .padding(/*@START_MENU_TOKEN@*/.top, 20.0/*@END_MENU_TOKEN@*/)
                Spacer()
                Image("Card1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 300 , height: 110, alignment: .top)
                    .padding(40.0)
                    
                    
            }
            .frame(width: 340.0, height: 220.0)
            .background(Color.black)
            .cornerRadius(20)
        .shadow(radius: 20)
        }
        
            
        
    }
}

#Preview {
    ContentView()
}
