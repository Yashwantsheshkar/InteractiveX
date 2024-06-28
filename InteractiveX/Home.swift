//
//  Home.swift
//  InteractiveX
//
//  Created by Yashwant Sheshkar on 29/06/24.
//

import SwiftUI

struct Home: View {
    @State var showProfile = false
    
    var body: some View {
        ZStack {
            
            Color(hex: "#adadad")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            
            VStack {
                
                HStack {
                    Text("Watching")
                        .font(.system(size: 28, weight: .bold))
                    
                    Spacer()
                    
                    Button(action: {self.showProfile.toggle()}) {
                        Image("Avatar")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 36, height: 36)
                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        
                    }
                }
                .padding(.horizontal)
                .padding(.top, 30)
                
                Spacer()
            }
            .padding(.top, 44)
            
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 20)
            
            .offset(y: showProfile ? -450:0)
            
            .rotation3DEffect(Angle(degrees: showProfile ? -10 : 0), axis: (x: 10.0, y: 0, z: 0))
            
            .scaleEffect(showProfile ? 0.9 : 1)
            .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            MenuView()
            
                .offset(y: showProfile ? 0 : 600)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
            
        }
    }
}

#Preview {
    Home()
}
