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

#if targetEnvironment(simulator)
    static let url = "http://127.0.0.1:8081"
#else
    // This ip address must be the local ip of your machine to build on an iphone in dev.
    // You can find it in "Settings" -> "Wifi" -> "Details" -> "TCP/IP"
    static let url = "http://172.33.1.27:8081"
#endif

    init(sessionConfig: URLSessionConfiguration = .default) {
        self.session = URLSession(configuration: sessionConfig)
    }

    static let shared = WebService()

    var decoder: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .iso8601
        return decoder
    }

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
            return try decoder.decode(responseType, from: data)

        case 404:
            let error = try decoder.decode(NotFoundError.self, from: data)
            throw HTTPError.notFound(reason: error.reason)
        default:

            throw URLError(.badServerResponse)
        }
    }
}

struct NotFoundError: Decodable {
    let reason: String
}
