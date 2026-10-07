//
//  WorkshopsViewModel.swift
//  FestiBD_App
//
//  Created by ShoSho on 06/10/2026.
//

import SwiftUI

@Observable
final class WorkshopsViewModel {
    /* private(set) */ var state = WorkshopsUiState()
    
    //    init(state: WorkshopsUiState = WorkshopsUiState()) {
    //        self.state = state
    //    }
    
    func fetchData() async throws -> [WorkshopModel] {
        guard let url = URL(string: "http://localhost:8081/workshops") else {
            throw state.NetworkError.invalidURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse,
              (200...299).contains(httpResponse.statusCode) else {
            throw state.NetworkError.invalidResponse
        }
        
        return try JSONDecoder().decode([WorkshopModel].self, from: data)
    }
    
    func loadWorkshops() async {
        state.isLoading = true
        defer { state.isLoading = false }
        
        do {
            state.listOfWorkshops = try await fetchData()
        } catch {
            self.state.error = error
        }
    }
}
