//
//  WorkshopsView.swift
//  FestiBD_App
//
//  Created by ShoSho on 07/10/2026.
//

import SwiftUI

struct WorkshopsView: View {
    @Environment(WorkshopsViewModel.self) var workshopsViewModel
    
    var body: some View {
        
//        .task {
//            await loadWorkshops()
//        }
    }
}

#Preview {
    @Previewable @State var workshopsViewModel = WorkshopsViewModel()
    
    WorkshopsView(
        
    )
    .environment(WorkshopsViewModel)
}
