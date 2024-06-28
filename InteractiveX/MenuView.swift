//
//  MenuView.swift
//  InteractiveX
//
//  Created by Yashwant Sheshkar on 28/06/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        
        
        VStack {
            Spacer()
         VStack(spacing: 16.0) {
                Text("Yashwant - 58% complete")
                    .font(.caption)
             
             Color(.white)
                 .frame(width: 70, height: 6)
                 .cornerRadius(3.0)
                 .frame(width: 130, height: 6, alignment: .leading)
                 .background(Color(hex: "#000000").opacity(0.08))
                 .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                 .padding()
                 .frame(width: 150, height: 25)
                 .background(Color.black.opacity(0.1))
                 .cornerRadius(12)
                 
             
             
             
                MenuRow(title: "Account", icon: "gear")
                MenuRow(title: "Billing", icon: "creditcard")
                MenuRow(title: "Sign out", icon: "person.crop.circle")
            }
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)), Color(#colorLiteral(red: 0.8705882353, green: 0.8941176471, blue: 0.9450980392, alpha: 1)),]), startPoint: .top, endPoint: .bottom))
            .clipShape(RoundedRectangle(cornerRadius : 30, style: .continuous))
            .shadow(color: Color.black.opacity(0.3), radius: 20, x: 0, y: 20)
        .padding(.horizontal, 30)
        .overlay(
            Image("Avatar")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .offset(CGSize(width: 10.0, height: -150.0))
        )
        }
        .padding(.bottom, 30.0)
        
        
    }
}

#Preview {
    MenuView()
}



struct MenuRow: View {
    
    var title: String
    var icon: String
    
    var body: some View {
        HStack(spacing: 16.0) {
            Image(systemName: icon)
                .font(.system(size: 20, weight: .light))
                .imageScale(.large)
                .frame(width: 32, height: 32)
                .foregroundColor(Color(hex: "A9BBD4"))
                
            
            Text(title)
                .font(.system(size: 20, weight: .bold, design: .default))
                .frame(width: 120, alignment: .leading)
                
            
        }
    }
}




extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        _ = scanner.scanString("#")
        
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double(rgb & 0xFF) / 255.0
        
        self.init(red: r, green: g, blue: b)
    }
}
