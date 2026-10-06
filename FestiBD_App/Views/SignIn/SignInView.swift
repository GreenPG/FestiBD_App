//
//  SignInScreen.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 06/10/2026.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        VStack {
            ZStack(alignment: .center) {
                HeaderComponentView()
                Image("Logo")
            }
            .frame(maxWidth: 376, maxHeight: 376)
            SignInContentContentView()
                .padding(.horizontal, 16)
        }
    }
}

struct SignInContentContentView: View {

    @State var viewModel = SignInViewModel()

    var body: some View {
        VStack(spacing: 20) {
            UsernameTextFieldComponent(
                username: $viewModel.state.username,
            )
            .padding(.top, 30)
            EmailTextFieldComponent(email: $viewModel.state.email, isEmailValid: .constant(true))
            PasswordTextFieldComponent(password: $viewModel.state.password, isPasswordValid: .constant(true))
            PasswordTextFieldComponent(password: $viewModel.state.password, isConfirmationField: true, isPasswordValid: .constant(true))
            SigninLoginButtonComponent(isLogin: false, isDisabled: viewModel.state.isSignInDisabled)
            SigninLoginDividerComponent()
                .padding(.vertical, 15)
            HStack {
                Text("Already have an account ?")
                Button("Log In") {
                }
            }
            .font(Font.custom("Armata", size: 16))
            Spacer()
        }
        .onChange(of: viewModel.state.username) {
            viewModel.checkUsername()
        }
        .onChange(of: viewModel.state.email) {
            viewModel.checkEmail()
        }
        .onChange(of: viewModel.state.password) {
            viewModel.checkPassword()
        }
        .onChange(of: viewModel.state.passwordConfirmation) {
            viewModel.checkPasswordConfirmation()
        }
    }
}

#Preview {
    SignInView()
}
