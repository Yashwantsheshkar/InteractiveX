//
//  UpdateList.swift
//  InteractiveX
//
//  Created by Yashwant Sheshkar on 29/06/24.
//

import SwiftUI

struct UpdateList: View {
    @ObservedObject var store = UpdateStore()
    
    func addUpdate(){
        store.updates.append(Update(image: "Card1", title: "", text: "text", date: "jan 1"))
    }
    
    var body: some View {
        NavigationView(content: {
            List{
                ForEach(store.updates) { update in
                    NavigationLink(destination: UpdateDetail(update: update)) {
                        HStack {
                            Image(update.image)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80, height: 80)
                                .background(Color(.black))
                                .cornerRadius(20)
                                .padding(.trailing,4)
                            VStack(alignment: .leading, spacing: 8.0) {
                                Text(update.title)
                                    .font(.system(size: 20, weight: .bold))
                                Text(update.text)
                                    .lineLimit(2)
                                    .font(.subheadline)
                                    .foregroundColor(Color.gray)
                                Text(update.date)
                                    .font(.caption)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundStyle(.secondary)
                            }
                        }
                        .padding(.vertical, 8)
                       
                        
                    }
                    
                        
              
                    
                    .navigationBarTitle(Text("Updates"))
                  
                }
                
            }
        })
    }
}

#Preview {
    UpdateList()
}


struct Update: Identifiable{
    var id = UUID()
    var image: String
    var title: String
    var text: String
    var date: String
}


let updateData = [
    Update(image: "Card1", title: "SwiftUI Advanced", text: "Take your SwiftUI app to the App Store with advanced techniques like API data, packages and CMS.", date: "JAN 1"),
    Update(image: "Card2", title: "Webflow", text: "Design and animate a high converting landing page with advanced interactions, payments and CMS", date: "OCT 17"),
    Update(image: "Card3", title: "ProtoPie", text: "Quickly prototype advanced animations and interactions for mobile and Web.", date: "AUG 27"),
    Update(image: "Card4", title: "SwiftUI", text: "Learn how to code custom UIs, animations, gestures and components in Xcode 11", date: "JUNE 26"),
    Update(image: "Card5", title: "Framer Playground", text: "Create powerful animations and interactions with the Framer X code editor", date: "JUN 11")
]

