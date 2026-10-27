//
//  LoginViewModel.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 05/10/2026.
//

import Foundation
import SwiftUI

@MainActor
@Observable
final class LoginViewModel {

    var state = LoginUIState()
    let router = Router.shared
    var accountManager = AccountManager.shared

    func checkEmail() {
        guard !state.email.isEmpty else {
            state.isEmailValid = false
            state.isLoginDisabled = true
            return
        }
        guard let emailRegex = try? Regex("[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}") else {
            return
        }
        guard state.email.contains(emailRegex) else {
            state.isEmailValid = false
            state.isLoginDisabled = true
            return
        }
        state.isEmailValid = true
        state.isLoginDisabled = false
    }

    func checkPassword() {
        guard !state.password.isEmpty else {
            state.isPasswordValid = false
            state.isLoginDisabled = true
            return
        }
        state.isPasswordValid = true
        state.isLoginDisabled = false
    }

    func submitLogin() async  {
        state.loginErrorMessage = ""
        state.hasLoginFailed = false
        checkEmail()
        checkPassword()
        guard !state.isLoginDisabled else {
            return
        }

        do {
            try await accountManager.login(email: state.email, password: state.password)
        } catch HTTPError.notFound(let reason) {
            state.hasLoginFailed = true
            state.loginErrorMessage = reason
        } catch {
            state.hasLoginFailed = true
            state.loginErrorMessage = error.localizedDescription
        }
    }
}
