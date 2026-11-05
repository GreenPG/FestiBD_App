//
//  AccountManager.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 22/10/2026.
//

import Foundation

enum LogStatus {
    case loggedIn
    case disconnected
    case unknown
}

@Observable
final class AccountManager {


    let defaults = UserDefaults()
    var isLoggedIn: LogStatus = .unknown

    static let shared = AccountManager()

    init() {
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
        } else {
            self.isLoggedIn = .disconnected
        }
    }

    func login(email: String, password: String) async throws {
        let response = try await WebService.shared
            .apiCall(
                url: "\(WebService.url)/users/login",
                method: .post,
                responseType: AuthDTO.self,
                body: LoginDTO(email: email, password: password)
            )
        KeychainManager.set(response.token, forKey: "jwttoken")
        isLoggedIn = .loggedIn
        if defaults.bool(forKey: "isRememberMeActive") {
            KeychainManager.set(email, forKey: "account")
            KeychainManager.set(password, forKey: "password")
        }
    }

    func signin(username: String, email: String, password: String) async throws {
        let _ = try await WebService.shared.apiCall(
            url: "\(WebService.url)/users",
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
