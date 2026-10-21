//
//  HomePageView.swift
//  FestiBD_App
//
//  Created by Apprenant 85 on 30/09/2026.
//
import SwiftUI

struct HomePageView: View {
    @State var activeDay: WeekEnd = .friday
    @State var isSelected = false
    @Environment(Router.self) private var router
    var body: some View {
        VStack{
            ScrollView {
                ZStack{
                    HeaderComponentView(headerSize: .Home)
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
                            .overlay(Color.appYellow)
                            .padding(.horizontal,30)

                        HStack(alignment: .firstTextBaseline){
                            Text("PROGRAMME")
                                .font(Font.custom("ComicsTricks", size: 37))
                                .foregroundStyle(.white)

                            Text("2026")
                                .font(Font.custom("CoinyCyrillic", size: 67))
                                .foregroundStyle(.white)
                        }


                    }
                }

                MenuSectionComponent(activeDay: $activeDay, isSelected: $isSelected)

                VStack(spacing: 15){

                    ForEach(workshops) { workshops in
                        Button {
                            router.navigate(to: .WorkshopDetail(workshopId: UUID()))
                        } label: {
                            CardWorkshopComponent(workshopModel: workshops)
                        }
                        .tint(.black)
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom,30)

            }
            .ignoresSafeArea()

        }
    }
}

#Preview {
    HomePageView()
        .environment(Router())
}
