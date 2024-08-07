//
//  Home.swift
//  InteractiveX
//
//  Created by Yashwant Sheshkar on 29/06/24.
//

import SwiftUI

struct Home: View {
    @State var showProfile = false
    @State var viewState: CGSize = .zero

    
    var body: some View {
        ZStack {
            
            Color(hex: "#adadad")
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            
            HomeView(showProfile: $showProfile)
            .padding(.top, 44)
            
            .background(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 20)
            
            .offset(y: showProfile ? -450:0)
            
            .rotation3DEffect(Angle(degrees: showProfile ? Double(viewState.height / 10) - 10 : 0), axis: (x: 10.0, y: 0, z: 0))
            
            
            
            .scaleEffect(showProfile ? 0.9 : 1)
            .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            
            MenuView()
            
                .background(Color.black.opacity(0.0001))
                .offset(y: showProfile ? 0 : screen.height)
                .offset(y: viewState.height)
                .animation(.spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0))
                .onTapGesture {
                    self.showProfile.toggle()
                }
                .gesture(
                    DragGesture()
                        .onChanged{ value in
                        self.viewState = value.translation
                    }
                        .onEnded{ value in
                            if self.viewState.height > 50 {
                                self.showProfile = false
                            }
                            self.viewState = .zero
   
                        }
                        
                
            )
            
        }
    }
}

#Preview {
    Home()
}

struct AvatarView: View {
    @Binding var showProfile: Bool
  
    var body: some View {

        Button(action: {self.showProfile.toggle()}) {
            Image("Avatar")
                .renderingMode(.original)
                .resizable()
                .frame(width: 36, height: 36)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
        }
    }
}

let screen = UIScreen.main.bounds
