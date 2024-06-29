//
//  RingView.swift
//  InteractiveX
//
//  Created by Yashwant Sheshkar on 30/06/24.
//

import SwiftUI

struct RingView: View {
    
    var color1 = Color(hex: "#2b00ff")
    var color2 = Color(hex: "#ff0062")
    var width: CGFloat = 88
    var height: CGFloat = 88
    var percent: CGFloat = 44
 
    
    var body: some View {
        let multiplier = width / 44
        let progress = 1 - (percent / 100)
        
        return ZStack {
            Circle()
                .stroke(Color.black.opacity(0.1), style: StrokeStyle(lineWidth: 5 * multiplier))
                .frame(width: width, height: height)
            
            Circle()
                .trim(from: progress, to: 1)
                .stroke(
                    LinearGradient(gradient: Gradient(colors: [color1, color2]), startPoint: .topTrailing, endPoint: .bottomLeading),
                    style: StrokeStyle(lineWidth: 5 * multiplier, lineCap: .round, lineJoin: .round, miterLimit: .infinity, dash: [20,0], dashPhase: 0)
                )
                .rotationEffect(Angle(degrees: 90))
                .rotation3DEffect(Angle(degrees: 180), axis: (x: 1.0, y: 0, z: 0))
                .frame(width: width, height: height)
                .shadow(color: color1.opacity(0.1), radius: 3 * multiplier, x: 0.0, y: 3 * multiplier)
            
            Text("\(Int(percent))%")
                .font(.system(size: 14 * multiplier))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            
        }
    }
}

#Preview {
    RingView()
}
