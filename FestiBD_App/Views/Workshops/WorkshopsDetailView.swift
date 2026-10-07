//
//  WorkshopsDetailView.swift
//  FestiBD_App
//
//  Created by ShoSho on 07/10/2026.
//

import SwiftUI

struct WorkshopsDetailView: View {
    @Environment(WorkshopsViewModel.self) var workshopsViewModel
    
    var body: some View {
        
    }
}

#Preview {
    @Previewable @State var workshopsViewModel = WorkshopsViewModel()
    
    WorkshopsDetailView(
        
    )
    .environment(WorkshopsViewModel)
}
