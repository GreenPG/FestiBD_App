//
//  LoginViewModel.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 05/10/2026.
//

import Foundation

@Observable
final class LoginViewModel {

    var state = LoginUIState()

    func checkEmail() {
        guard !state.email.isEmpty else {
            state.isEmailValid = false
            return
        }
        guard let emailRegex = try? Regex("[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}") else {
            return
        }
        guard state.email.contains(emailRegex) else {
            state.isEmailValid = false
            return
        }
        state.isEmailValid = true
    }

    func checkPassword() {
        guard !state.password.isEmpty else {
            state.isPasswordValid = false
            return
        }
        state.isPasswordValid = true
    }

    func submitLogin() {
        checkEmail()
        checkPassword()
        guard !state.isLoginDisabled else {
            return
        }
        // TODO: add login request
    }

}
