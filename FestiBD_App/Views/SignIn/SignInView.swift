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
                username: $viewModel.state.username             
            )
            .padding(.top, 30)
            EmailTextFieldComponent(email: $viewModel.state.email)
            PasswordTextFieldComponent(password: $viewModel.state.password)
            PasswordTextFieldComponent(password: $viewModel.state.password, isConfirmationField: true)
            SigninLoginButtonComponent(isLogin: false)
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
    }
}

#Preview {
    SignInView()
}
