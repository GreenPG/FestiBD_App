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
                HeaderComponentView(headerSize: .LoginSignin)
                Image("Logo")
            }
            .ignoresSafeArea()
            .frame(maxWidth: 376, maxHeight: 325)
            SignInContentContentView()
                .padding(.horizontal, 16)
        }
    }
}

struct SignInContentContentView: View {

    @State var viewModel = SignInViewModel()

    var body: some View {
        VStack(spacing: 18) {
            UsernameTextFieldComponent(
                username: $viewModel.state.username,
                isUsernameValid: $viewModel.state.isUsernameValid
            )
            .padding(.top, 30)
            .frame(minHeight: 60)
            EmailTextFieldComponent(
                email: $viewModel.state.email,
                isEmailValid: $viewModel.state.isEmailValid
            )
            .frame(minHeight: 50)
            PasswordTextFieldComponent(
                password: $viewModel.state.password,
                isPasswordValid: $viewModel.state.isPasswordValid
            )
            .frame(minHeight: 50)
            PasswordTextFieldComponent(
                password: $viewModel.state.passwordConfirmation,
                isConfirmationField: true,
                isPasswordValid: $viewModel.state.isPasswordConfirmationValid
            )
            .frame(minHeight: 50)
            Button {
                Task {
                    viewModel.state.isSignInDisabled = true
                    await viewModel.submitSignIn()
                    viewModel.state.isSignInDisabled = false
                }
            } label: {
                SigninLoginButtonComponent(isLogin: false, isDisabled: viewModel.state.isSignInDisabled)
            }
            Text(viewModel.state.hasSignInFail ? "Error during sign in" : "")
                .foregroundStyle(.red)
                .font(Font.custom("Atrama", size: 14))
            SigninLoginDividerComponent()
                .padding(.vertical, 15)
            HStack {
                Text("Already have an account ?")
                NavigationLink("Log In") {
                    LoginView()
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
        .navigationBarBackButtonHidden()
    }
}

#Preview {
    SignInView()
}
