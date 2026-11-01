//
//  WorkshopDetailView.swift
//  FestiBD_App
//
//  Created by ShoSho on 27/10/2026.
//

import Foundation
import SwiftUI

struct WorkshopDetailView: View {
    
    var workshop: WorkshopModel
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView{
                VStack(spacing: 7){
                    
                    TopComicComponentView(workshopModel: workshop)
                        .frame(height: geometry.size.height * 0.25)
                    
                    HStack{
                        
                        MiddleLeftComicComponentView(workshopModel: workshop)
                            .frame(height: geometry.size.height * 0.39)
                        
                        VStack{
                            MiddleRightTopComicComponentView(workshopModel: workshop)
                            .frame(height: geometry.size.height * 0.19)
                            
                            MiddleRightBottomComicComponentView(workshopModel: workshop)
                            .frame(height: geometry.size.height * 0.19)
                        }
                    }
                    
                    MiddleBottomComicComponentView(workshopModel: workshop)
                    .frame(height: geometry.size.height * 0.25)
                    
                    BottomComicComponentView(isBooked: true)
                    .frame(height: geometry.size.height * 0.1)
                }
                .padding(.all, 10)
            }
        }
    }
}

#Preview {
    WorkshopDetailView(workshop: workshops[0])
}
