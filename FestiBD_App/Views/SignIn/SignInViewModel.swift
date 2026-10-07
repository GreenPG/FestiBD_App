//
//  SignInViewModel.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 06/10/2026.
//

import Foundation

@Observable
final class SignInViewModel {
    var state = SignInUIState()

    func checkUsername() {
        guard !state.username.isEmpty else {
            state.isUsernameValid = false
            return
        }
        state.isUsernameValid = true
    }

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
        guard let passwordRegex = try? Regex("(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-_]).{8,}") else {
            return
        }
        guard state.password.contains(passwordRegex) else {
            state.isPasswordValid = false
            return
        }
        state.isPasswordValid = true
    }

    func checkPasswordConfirmation() {
        guard state.password == state.passwordConfirmation else {
            state.isPasswordConfirmationValid = false
            return
        }
        state.isPasswordConfirmationValid = true
    }

    func submitSignIn() {

    }

}
