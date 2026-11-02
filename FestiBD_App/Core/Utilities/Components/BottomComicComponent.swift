//
//  TopComicComponent.swift
//  FestiBD_App
//
//  Created by ShoSho on 27/10/2026.
//

import Foundation
import SwiftUI

struct BottomComicComponentView: View {
    
    var isBooked: Bool
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                Rectangle()
                    .fill(.blueComic)
                    .stroke(.black, lineWidth: 2)
                
                StarShape(corners: 5, smoothness: 0.5)
                    .fill(.yellowComic)
                    .stroke(.black, lineWidth: 2)
                    .frame(width: 20, height: 20)
                    .offset(x: 140, y: -20)
                    .rotationEffect(.degrees(15))
                
                StarShape(corners: 5, smoothness: 0.5)
                    .fill(.white)
                    .stroke(.black, lineWidth: 2)
                    .frame(width: 20, height: 20)
                    .offset(x: 175, y: 20)
                    .rotationEffect(.degrees(-15))
                
                StarShape(corners: 5, smoothness: 0.5)
                    .fill(.yellowComic)
                    .stroke(.black, lineWidth: 2)
                    .frame(width: 30, height: 30)
                    .offset(x: -150, y: 40)
                    .rotationEffect(.degrees(15))
                
//                StarShape(corners: 15, smoothness: 0.7)
//                    .fill(.red)
//                    .stroke(.black, lineWidth: 1)
//                    .frame(width: 175, height: 66)
//                
//                StarShape(corners: 15, smoothness: 0.7)
//                    .fill(.yellow)
//                    .stroke(.black, lineWidth: 1)
//                    .frame(width: 160, height: 56)
                
                ZStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .background(.redComic)
                        .frame(width: 230, height: 62)
                        .border(.black, width: 3)
                        .cornerRadius(5)
                        .padding(.top, 15)
                        .padding(.leading, 15)
                    HStack(alignment: .center) {
                        Text(isBooked ? "BOOK IT" : "CANCELED IT")
                            .font(Font.custom("ComicsTricks", size: 32))
                            .foregroundStyle(.blueComic)
                            .padding(.vertical, 24)
                    }
                    .frame(width: 230, height: 62)
                    .background(.yellowComic)
                    .border(.black, width: 3)
                    .cornerRadius(5)
                }
                .frame(width: 330, height: 62)
                .padding(.bottom, 5)
            }
        }
    }
}

#Preview {
    BottomComicComponentView(isBooked: true)
}
