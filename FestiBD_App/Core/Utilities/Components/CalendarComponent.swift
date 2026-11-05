//
//  TopComicComponent.swift
//  FestiBD_App
//
//  Created by ShoSho on 27/10/2026.
//

import Foundation
import SwiftUI

struct CalendarComponentView: View {
    var body: some View {
        ZStack{
            
            RoundedRectangle(cornerRadius: 20)
                .fill(.white)
                .stroke(.black, lineWidth: 2)
                .frame(width: 125, height: 125)
            UnevenRoundedRectangle(
                cornerRadii:
                        .init(
                            topLeading: 20,
                            bottomLeading: 0,
                            bottomTrailing: 0,
                            topTrailing: 20
                        )
            )
            .fill(.redComic)
            .frame(width: 124, height: 40)
            .padding(.bottom, 83)
        }
        .rotationEffect(.degrees(-5))
    }
}

#Preview {
    CalendarComponentView()
}
