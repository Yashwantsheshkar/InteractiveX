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
            .padding(.top, 30)
            
            Spacer()
        }
    }
}

#Preview {
    HomeView(showProfile: .constant(false))
}
