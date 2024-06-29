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
                    ForEach(sectionView) { item in
                        SectionView(section: item)
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
    
    var section : Section
    
    var body: some View {
        VStack {
            HStack {
                Text(section.title)
                    .font(.system(size: 24) .bold())
                    .foregroundColor(Color.white)
                    .frame(width: 160, alignment: .leading)
                
                Spacer()
                
                Image(section.logo)
                
            }
            Text(section.text.uppercased())
                .frame(maxWidth: .infinity, alignment: .leading)
            section.image
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .padding(.top, 20)
        .padding(.horizontal, 20)
        .frame(width: 275, height: 275)
        .background(section.color)
        .cornerRadius(30)
        .shadow(color: section.color.opacity(0.3), radius: 20, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 20)
    }
}



struct Section : Identifiable {
    var id = UUID()
    var title : String
    var text : String
    var logo : String
    var image : Image
    var color : Color
    
}

let sectionView = [
Section(title: "Prototype design in SwiftUI", text: "18 sections", logo: "Logo1", image: Image("Card1"), color: Color("card1")),
Section(title: "Build a SwiftUI app", text: "20 sections", logo: "Logo1", image: Image("Card2"), color: Color("card2")),
Section(title: "SwiftUI Advanced", text: "28 sections", logo: "Logo1", image: Image("Card3"), color: Color("card3"))
]


