//
//  MenuSectionComponent.swift
//  FestiBD_App
//
//  Created by Apprenant 85 on 30/09/2026.
//

import SwiftUI

struct MenuSectionComponent: View {
    
    let days = ["friday","saturday","sunday"]
    @Binding var activeDay: String
    @Binding var isSelected: Bool
    
    var body: some View {
        VStack{
            HStack{
                Button{
                    if isSelected == true {
                        
                        activeDay = "friday"
                    }
                    isSelected.toggle()
                }label: {
                    VStack{
                        Text("13")
                            .font(Font.custom("ComicsTricks", size: 67))
                        
                        
                        
                        Text("FRIDAY")
                            .font(Font.custom("ComicsTricks", size: 18))
                        
                        
                    }
                    .foregroundStyle(activeDay == "friday" ? .black : .gray)
                }
                .onTapGesture {
                    
                }
                
                
                
                Button{
                    if isSelected == true {
                        
                        activeDay = "saturday"
                    }
                    isSelected.toggle()
                }label: {
                    VStack{
                        Text("14")
                            .font(Font.custom("ComicsTricks", size: 67))
                        
                        Text("SATURDAY")
                            .font(Font.custom("ComicsTricks", size: 18))
                        
                    }
                    .foregroundStyle(activeDay == "saturday" ? .black : .gray)
                    
                }
                .padding(40)
                .onTapGesture{
                    
                }
                
                Button{
                    if isSelected == true {
                        
                        activeDay = "sunday"
                    }
                    isSelected.toggle()
                    
                }label: {
                    VStack{
                        Text("15")
                            .font(Font.custom("ComicsTricks", size: 67))
                        
                        Text("SUNDAY")
                            .font(Font.custom("ComicsTricks", size: 18))
                        
                    }
                    .foregroundStyle(activeDay == "sunday" ? .black : .gray)
                }
                .onTapGesture{
                    
                }
                
            }
            Spacer()
        }
    }
}

#Preview {
    MenuSectionComponent(activeDay: .constant("friday"), isSelected: .constant(false))
}

