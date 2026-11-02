//
//  TopComicComponent.swift
//  FestiBD_App
//
//  Created by ShoSho on 27/10/2026.
//

import Foundation
import SwiftUI

struct TopComicComponentView: View {
    
    let workshopModel : WorkshopModel
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.orangeComic)
                .stroke(.black, lineWidth: 2)
            
            StarShape(corners: 5, smoothness: 0.5)
                .fill(.yellowComic)
                .stroke(.black, lineWidth: 2)
                .frame(width: 30, height: 30)
                .offset(x: -175, y: -0)
                .rotationEffect(.degrees(15))
            
            StarShape(corners: 5, smoothness: 0.5)
                .fill(.white)
                .stroke(.black, lineWidth: 2)
                .frame(width: 15, height: 15)
                .offset(x: -105, y: -87)
            
            StarShape(corners: 5, smoothness: 0.5)
                .fill(.redComic)
                .stroke(.black, lineWidth: 2)
                .frame(width: 15, height: 15)
                .offset(x: 175, y: -40)
            
            AsyncImage(url: URL(string: "https://gallery.yopriceville.com/downloadfullsize/send/17610"), scale: 50)
                .frame(width: 1, height: 1)
                .offset(x: 112, y: 60)
            
            
            SpeechBubbleShape()
                .fill(.white)
                .stroke(.black, lineWidth: 2)
                .frame(width: 325, height: 150)
                .shadow(radius: 10)
            
            Text("\(workshopModel.name)")
                .foregroundStyle(.blueComic)
                .font(Font.custom("ComicsTricks", size: 32))
                .padding(.bottom, 30)
                .bold()
        }
    }
}

#Preview {
    TopComicComponentView(workshopModel: workshops[0])
}
