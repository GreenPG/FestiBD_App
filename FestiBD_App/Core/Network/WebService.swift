//
//  WebService.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 21/10/2026.
//

import Foundation

enum HTTPMethod: String {
    case get = "get"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
}

enum HTTPError: Error {
    case notFound(reason: String)
}


class WebService {
    private let session: URLSession

    init(sessionConfig: URLSessionConfiguration = .default) {
        self.session = URLSession(configuration: sessionConfig)
    }

    static let shared = WebService()

    func apiCall<T:Decodable>(
        url: String,
        method: HTTPMethod,
        queryParams: [String: String]? = nil,
        responseType: T.Type,
        body: Encodable? = nil,
        token: String? = nil
    ) async throws -> T {
        guard var urlBuilder = URLComponents(string: url) else {
            throw URLError(.badURL)
        }

        if let queryParams {
            urlBuilder.queryItems = queryParams.map {
                URLQueryItem(name: $0.key, value: $0.value)
            }
        }

        guard let finalUrl = urlBuilder.url else {
            throw URLError(.badURL)
        }

        var request = URLRequest(url: finalUrl)
        request.httpMethod = method.rawValue

        if let token {
            request.setValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        }

        if let body {
            request.httpBody = try JSONEncoder().encode(body)

            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        }

        let (data, response) =  try await URLSession.shared.data(for: request)

        guard let httpResponse = response as? HTTPURLResponse else {
            throw URLError(.badServerResponse)
        }

        switch httpResponse.statusCode {
        case 200...209:
            let result = try JSONDecoder().decode(responseType, from: data)
            return result
        case 404:
            let error = try JSONDecoder().decode(NotFoundError.self, from: data)
            throw HTTPError.notFound(reason: error.reason)
        default:

            throw URLError(.badServerResponse)
        }
    }
}

struct NotFoundError: Decodable {
    let reason: String
}
