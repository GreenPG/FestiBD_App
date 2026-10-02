//
//  HomePageView.swift
//  FestiBD_App
//
//  Created by Apprenant 85 on 30/09/2026.
//
import SwiftUI

struct HomePageView: View {
    @State var activeDay: String = "friday"
    @State var isSelected = false
    var body: some View {
        VStack{
            ZStack{
                HeaderComponentView()
                VStack{
                    Text("<COMICS ")
                        .font(Font.custom("ComicsTricks", size: 75))
                        .foregroundStyle(.white)
                    
                    Text("FESTIVAL>")
                        .font(Font.custom("ComicsTricks", size: 75))
                        .foregroundStyle(.white)
                        .padding(.horizontal,20)
                    
                    Divider()
                        .frame(minHeight: 6)
                        .overlay(Color.yellow)
                        .padding(.horizontal,30)
                    
                    HStack(alignment: .firstTextBaseline){
                        Text("PROGRAMME")
                            .font(Font.custom("ComicsTricks", size: 37))
                            .foregroundStyle(.white)
                        
                        Text("2026")
                            .font(Font.custom("CoinyCyrillic", size: 67))
                            .foregroundStyle(.white)
                    }
                    .padding(.top, 20)
                    Spacer()
                }
                
            }
            
            MenuSectionComponent(activeDay: $activeDay, isSelected: $isSelected)
            
            
        }
    }
}

    #Preview {
        HomePageView()
    }
