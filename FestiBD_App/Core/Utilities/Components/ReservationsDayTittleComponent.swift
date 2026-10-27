//
//  ReservationsDayTittleComponent.swift
//  FestiBD_App
//
//  Created by Apprenant 85 on 07/10/2026.
//

import SwiftUI

struct ReservationsDayTittleComponent: View {
    let weekEnd: WeekEnd
    var body: some View {
        
        HStack{
            Rectangle()
                .frame(width: 18, height: 25)
                .foregroundStyle(.orange)
            Rectangle()
                .frame(width: 8, height: 25)
                .foregroundStyle(.orange)
                .offset(x: -4)
            Text("\(weekEnd.rawValue)")
                .font(Font.custom("ComicsTricks", size: 29))
                .offset(x: -4)
            Spacer()
        }
        .padding(.leading,35)
       
    }
}

#Preview {
    ReservationsDayTittleComponent(weekEnd: .friday)
}
