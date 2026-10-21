//
//  LoginUIState.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 05/10/2026.
//

import Foundation

struct LoginUIState {
    var email: String = ""
    var password: String = ""
    var isRememberPasswordChecked: Bool = false
    var isPasswordShowed: Bool = true
    var isEmailValid: Bool = true
    var isPasswordValid: Bool = true

    var isLoginDisabled: Bool {
        !(isEmailValid && isPasswordValid)
    }
}
