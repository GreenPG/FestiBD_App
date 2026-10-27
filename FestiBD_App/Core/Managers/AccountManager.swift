//
//  AccountManager.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 22/10/2026.
//

import Foundation

@Observable
final class AccountManager {

    #if targetEnvironment(simulator)
    let url = "http://127.0.0.1:8081/users"
    #else
    // This ip address must be the local ip of your machine to build on an iphone in dev.
    // You can find it in "Settings" -> "Wifi" -> "Details" -> "TCP/IP"
    let url = "http://172.33.1.27:8081/users"
    #endif

    let defaults = UserDefaults()
    var isLoggedIn = false

    static let shared = AccountManager()

    init(isLoggedIn: Bool = false) {
        self.isLoggedIn = isLoggedIn

        if defaults.bool(forKey: "isRememberMeActive") {
            Task {
                do {
                    try await login(
                        email: KeychainManager<String>.get("account") ?? "",
                        password: KeychainManager<String>.get("password") ?? ""
                    )
                } catch  {
                    defaults.set(false, forKey: "isRememberMeActive")
                }
            }
        }
    }

    func login(email: String, password: String) async throws {
        let response = try await WebService.shared
            .apiCall(
                url: "\(url)/login",
                method: .post,
                responseType: AuthDTO.self,
                body: LoginDTO(email: email, password: password)
            )
        KeychainManager.set(response.token, forKey: "jwttoken")
        isLoggedIn = true
        if defaults.bool(forKey: "isRememberMeActive") {
            KeychainManager.set(email, forKey: "account")
            KeychainManager.set(password, forKey: "password")
        }
    }

    func signin(username: String, email: String, password: String) async throws {
        let _ = try await WebService.shared.apiCall(
            url: url,
            method: .post,
            responseType: UserDTO.self,
            body: SigninDTO(
                username: username,
                password: password,
                email: email
            )
        )
    }
}
