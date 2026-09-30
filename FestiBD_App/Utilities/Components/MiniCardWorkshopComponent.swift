//
//  Untitled.swift
//  FestiBD_App
//
//  Created by Apprenant 85 on 30/09/2026.
//
import SwiftUI

struct MiniCardWorkshopComponent: View {
    var body: some View {
        ZStack{
            UnevenRoundedRectangle(topLeadingRadius: 0, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 0)
                .stroke(lineWidth: 5)
                .frame(width: 365, height: 115)
            
            UnevenRoundedRectangle(topLeadingRadius: 0, bottomLeadingRadius: 0, bottomTrailingRadius: 0, topTrailingRadius: 0)
                .foregroundStyle(LinearGradient(
                    colors: [.red, .yellow],
                    startPoint: .top,
                    endPoint: .bottom
                ))
                .opacity(0.6)
                .frame(width: 360, height: 110)
            
            Circle()
                .frame(width: 70)
                .foregroundStyle(.white.quinary)
                .offset(x: 142, y: -17)
            Circle()
                .frame(width: 30)
                .foregroundStyle(.white.quinary)
                .offset(x: 85, y: 15)
            Circle()
                .frame(width: 60)
                .foregroundStyle(.white.quinary)
                .offset(x: -146, y: 23)
            Circle()
                .frame(width: 30)
                .foregroundStyle(.white.quinary)
                .offset(x: -90, y: 10)
            
            HStack{
                ZStack{
                    Rectangle()
                        .frame(maxWidth: 250,maxHeight: 50)
                        .foregroundStyle(.white)
                        .border(.black, width: 5)
                        .padding(.leading,16)
                        
                    Text("Tittle Workshop")
                        .font(.title2)
                        .fontWeight(.bold)
                        
                    
                }
                .offset(y: -35)
                Spacer()
            }
            VStack{
                
                    Text(" XXhXX AM - XXHXX AM")
            }
            .offset(x: 75, y: 40)
            

            ZStack{
                UnevenRoundedRectangle(topLeadingRadius: 0,bottomLeadingRadius: 0, bottomTrailingRadius: 20, topTrailingRadius: 20)
                    .frame(width: 130, height: 45)
                    .foregroundStyle(.black)
                UnevenRoundedRectangle(topLeadingRadius: 0,bottomLeadingRadius: 0, bottomTrailingRadius: 20, topTrailingRadius: 20)
                    .frame(width: 122, height: 37)
                    .foregroundStyle(.orange)
                HStack{
                    Text("Cancel")
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .font(.title3)
                    Image(systemName: "ticket")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)

                }
            }
            .offset(x: -125, y: 25)
        }
    }
}

#Preview {
    MiniCardWorkshopComponent()
}
