//
//  LoginUIState.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 05/10/2026.
//

import Foundation
import SwiftUI

struct LoginUIState {

    @AppStorage("isRememberMeActive") var isRememberMeActive = false

    var email: String = ""
    var password: String = ""
//    var isRememberPasswordChecked: Bool = false
    var isPasswordShowed: Bool = true
    var isEmailValid: Bool = true
    var isPasswordValid: Bool = true
    var hasLoginFailed: Bool = false
    var loginErrorMessage: String = ""

    var isLoginDisabled: Bool = false
}
