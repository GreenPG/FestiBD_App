//
//  MenuSectionComponent.swift
//  FestiBD_App
//
//  Created by Apprenant 85 on 30/09/2026.
//

import SwiftUI

struct MenuSectionComponent: View {

    @Binding var activeDay: WeekEnd
    @Binding var viewModel: HomePageViewModel

    var body: some View {

        VStack{
            HStack{

                Button{
                    activeDay = .friday
                    Task {
                        await viewModel.fetchWorkshops()
                    }
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
                    activeDay = .saturday
                    Task {
                        await viewModel.fetchWorkshops()
                    }
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
                    activeDay = .sunday
                    Task {
                        await viewModel.fetchWorkshops()
                    }
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
    MenuSectionComponent(activeDay: .constant(.friday), viewModel: .constant(HomePageViewModel()))
}


