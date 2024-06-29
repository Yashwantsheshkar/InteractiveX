//
//  HomeView.swift
//  InteractiveX
//
//  Created by Yashwant Sheshkar on 29/06/24.
//

import SwiftUI

struct HomeView: View {
    @Binding var showProfile: Bool
    var body: some View {
        VStack {
            
            HStack {
                Text("Watching")
                    .font(.system(size: 28, weight: .bold))
                
                Spacer()
                
                AvatarView(showProfile: $showProfile)
            }
            .padding(.horizontal)
            .padding(.leading, 14)
            .padding(.top, 30)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 30.0) {
                    ForEach(0 ..< 5) { item in
                        SectionView()
                    }
                    
                }
                .padding(30)
                .padding(.bottom, 30)
            }
        
            
            
            
            Spacer()
        }
    }
}

#Preview {
    HomeView(showProfile: .constant(false))
}

struct SectionView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Prototype design in SwiftUI")
                    .font(.system(size: 24) .bold())
                    .foregroundColor(Color.white)
                    .frame(width: 160, alignment: .leading)
                
                Spacer()
                
                Image("Logo1")
                
            }
            Text("18 sections" .uppercased())
                .frame(maxWidth: .infinity, alignment: .leading)
            Image("Card1")
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .frame(width: 275, height: 275)
        .background(Color("card1"))
        .cornerRadius(30)
        .shadow(color: Color("card1").opacity(0.3), radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 20)
    }
}
