//
//  LoginView.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 05/10/2026.
//

import SwiftUI

struct LoginView: View {


    var body: some View {
        VStack {
            ZStack(alignment: .center) {
                HeaderComponentView(headerSize: .LoginSignin)
                Image("Logo")
            }
            .frame(maxWidth: 376, maxHeight: 376)
            LoginScreenContentView()
                .padding(.horizontal, 16)
        }
    }
}

struct LoginScreenContentView: View {

    @State var viewModel = LoginViewModel()

    var body: some View {
        VStack(spacing: 20) {
            EmailTextFieldComponent(
                email: $viewModel.state.email,
                isEmailValid: $viewModel.state.isEmailValid
            )
            .padding(.top, 30)
            .frame(minHeight: 73)
            .onChange(of: viewModel.state.email) {
                viewModel.checkEmail()
            }
            PasswordTextFieldComponent(
                password: $viewModel.state.password,
                isPasswordValid: $viewModel.state.isPasswordValid
            )
            .frame(minHeight: 73)
            .onChange(of: viewModel.state.password) {
                viewModel.checkPassword()
            }
            HStack(spacing: 25) {
                HStack {
                    Toggle(
                        "Remember Me",
                        systemImage: viewModel.state.isRememberPasswordChecked ? "checkmark.square" : "square",
                        isOn: $viewModel.state.isRememberPasswordChecked,
                    )
                    .font(Font.custom("Armata", size: 16))
                    .frame(maxWidth: .infinity)
                    .toggleStyle(.button)
                    .backgroundStyle(.clear)
                    .foregroundStyle(.black)
                    .tint(.clear)
                }
                Button {
                } label: {
                    Text("Forget password ?")
                        .font(Font.custom("Armata", size: 16))
                        .foregroundStyle(.black)
                }

            }
            .padding(.vertical, 10)
            Button {
                viewModel.submitLogin()
            } label: {
                SigninLoginButtonComponent(
                    isLogin: true,
                    isDisabled: viewModel.state.isLoginDisabled
                )
            }
            .disabled(viewModel.state.isLoginDisabled)
            SigninLoginDividerComponent()
                .padding(.vertical, 15)
            HStack {
                Text("Don't have an account ?")
                Button("Sign up") {
                }
            }
            .font(Font.custom("Armata", size: 16))
            Spacer()
        }
    }
}

#Preview {
    LoginView()
}
