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
                .padding(.vertical, 0)
        }
    }
}

struct LoginScreenContentView: View {

    @State var viewModel = LoginViewModel()
    @State var isRememberPasswordChecked = false

    var body: some View {
        VStack(spacing: 20) {
            EmailTextFieldComponent(email: $viewModel.state.email)
                .padding(.horizontal, 29)
                .padding(.top, 30)
                .padding(.bottom, 10)
            PasswordTextFieldComponent(password: $viewModel.state.password)
            .padding(.horizontal, 29)
            .padding(.vertical, 10)
            .frame(height: 30)
            HStack(spacing: 25) {
                HStack {
                    Toggle(
                        "Remember Me",
                        systemImage: isRememberPasswordChecked ? "checkmark.square" : "square",
                        isOn: $isRememberPasswordChecked,
                    )
                    .font(Font.custom("Armata", size: 16))
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
