//
//  MenuSectionComponent.swift
//  FestiBD_App
//
//  Created by Apprenant 85 on 30/09/2026.
//

import SwiftUI

enum WeekEnd : String, CaseIterable {
    case friday = "FRIDAY 13"
    case saturday = "SATURDAY 14"
    case sunday = "SUNDAY 15"
}

struct MenuSectionComponent: View {
    
    @Binding var activeDay: WeekEnd
    @Binding var isSelected: Bool
    
    var body: some View {
        
        VStack{
            HStack{
                
                Button{
                    if isSelected == true {
                       activeDay = .friday
                    }
                    isSelected.toggle()
                }label: {
                    VStack{
                        Text("13")
                            .font(Font.custom("ComicsTricks", size: 67))
                        Text("FRIDAY")
                            .font(Font.custom("ComicsTricks", size: 18))
                    }
                    .foregroundStyle(activeDay == .friday ? .black : .gray)
                }
                
                  
                Button{
                    if isSelected == true {
                       activeDay = .saturday
                    }
                    isSelected.toggle()
                }label: {
                    VStack{
                        Text("14")
                            .font(Font.custom("ComicsTricks", size: 67))
                        Text("SATURDAY")
                            .font(Font.custom("ComicsTricks", size: 18))
                    }
                    .foregroundStyle(activeDay == .saturday ? .black : .gray)
                }
                .padding(.horizontal,57)
                
                Button{
                    if isSelected == true {
                       activeDay = .sunday
                    }
                    isSelected.toggle()
                    
                }label: {
                    VStack{
                        Text("15")
                            .font(Font.custom("ComicsTricks", size: 67))
                        Text("SUNDAY")
                            .font(Font.custom("ComicsTricks", size: 18))
                    }
                    .foregroundStyle(activeDay == .sunday ? .black : .gray)
                }
                
            }
          
        }
        .padding(.vertical,15)
    }
}

#Preview {
    MenuSectionComponent(activeDay: .constant(.friday), isSelected: .constant(false))
}


