//
//  SignInUIState.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 06/10/2026.
//

import Foundation

struct SignInUIState {
    var username = ""
    var email = ""
    var password = ""
    var passwordConfirmation = ""

    var isUsernameValid = true
    var isEmailValid = true
    var isPasswordValid = true
    var isPasswordConfirmationValid = true
    var isSignInDisabled = false

}
