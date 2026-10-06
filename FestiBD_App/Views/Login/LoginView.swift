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
                HeaderComponentView(isSmall: false)
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
    @State var isRememberPasswordChecked = false

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
            .onChange(of: viewModel.state.password) {
                viewModel.checkPassword()
            }
            HStack(spacing: 25) {
                HStack {
                    Toggle(
                        "Remember Me",
                        systemImage: isRememberPasswordChecked ? "checkmark.square" : "square",
                        isOn: $isRememberPasswordChecked,
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
            .padding(.vertical, 25)
            Button {

            } label: {
                SigninLoginButtonComponent(isLogin: true)
            }
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
