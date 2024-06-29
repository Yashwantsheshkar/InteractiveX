//
//  UpdateDetail.swift
//  InteractiveX
//
//  Created by Yashwant Sheshkar on 29/06/24.
//

import SwiftUI

struct UpdateDetail: View {
    
    var update: Update = updateData[1]
    
    var body: some View {
        ScrollView {
            VStack {
                Image(update.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                Text(update.text)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            }
            .padding()
            .navigationBarTitle(update.title)
        }
        .listStyle(PlainListStyle())
    }
    
}

#Preview {
    UpdateDetail()
}
