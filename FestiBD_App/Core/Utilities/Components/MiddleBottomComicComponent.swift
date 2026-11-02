//
//  TopComicComponent.swift
//  FestiBD_App
//
//  Created by ShoSho on 27/10/2026.
//

import Foundation
import SwiftUI

struct MiddleBottomComicComponentView: View {
    
    let workshopModel : WorkshopModel
    
    var body: some View {
        ZStack{
            Rectangle()
                .fill(.white)
                .stroke(.black, lineWidth: 2)
            
            LinearGradient(colors: [
                .blueComic, .white
            ], startPoint: .leading, endPoint: .trailing)
            .mask(RadialPatternView())
            .offset(x: -60, y: 0)
            
            LinearGradient(colors: [
                .white, .redComic
            ], startPoint: .leading, endPoint: .trailing)
            .mask(RadialPatternView())
            .offset(x: 60, y: 0)
            
            Capsule()
                .fill(.white)
                .frame(width: 200, height: 200)
            
            Image(systemName: "exclamationmark")
                .font(.system(size: 100))
                .foregroundColor(.redComic)
                .shadow(color: .black, radius: 1, x:  1, y:  1)
                .shadow(color: .black, radius: 1, x: -1, y:  1)
                .shadow(color: .black, radius: 1, x:  1, y: -1)
                .shadow(color: .black, radius: 1, x: -1, y: -1)
                .offset(x: 140, y: -40)
                .rotationEffect(.degrees(15))
            
            Text("\(workshopModel.description)")
                .font(Font.custom("Cause-Regular", size: 18))
                .multilineTextAlignment(.leading)
                .lineLimit(4)
                .minimumScaleFactor(0.7)
                .frame(width: 200, height: 200)
        }
    }
}

#Preview {
    MiddleBottomComicComponentView(workshopModel: workshops[0])
}
