//
//  PasswordTextFieldComponent.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 05/10/2026.
//

import SwiftUI

struct PasswordTextFieldComponent: View {

    @Binding var password: String
    @State var isPasswordShowed = false
    @State var isConfirmationField = false

    var body: some View {
        VStack {
            HStack(spacing: 30) {
                VStack(alignment: .center) {
                    Image(systemName: "lock.fill")
                        .frame(width: 20, height: 16)
                }
                .frame(width: 30)
                if isPasswordShowed {
                    TextField(isConfirmationField ? "Confirm Password" : "Password", text: $password)
                        .font(Font.custom("Armata", size: 20))
                        .frame(maxWidth: .infinity)
                } else {
                    SecureField(isConfirmationField ? "Confirm Password" : "Password", text: $password)
                        .font(Font.custom("Armata", size: 20))
//                        .frame(maxWidth: .infinity)
                }
                VStack {
                    Toggle (
                        "",
                        systemImage: isPasswordShowed ? "eye.fill" : "eye.slash.fill",
                        isOn: $isPasswordShowed
                    )
                    .toggleStyle(.button)
                    .foregroundStyle(.black)
                    .tint(.clear)
                    .frame(width: 20, height: 16)
                }
            }
            .padding(.horizontal, 29)
            .frame(alignment: .leading)
            Divider()
                .overlay(.black)
        }
    }
}

#Preview {
    PasswordTextFieldComponent(password: .constant(""))
}
