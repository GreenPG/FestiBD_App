//
//  EmailTextFieldComponent.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 05/10/2026.
//

import SwiftUI

struct EmailTextFieldComponent: View {

    @Binding var email: String
    @Binding var isEmailValid: Bool

    var body: some View {
        VStack {
            HStack(spacing: 30) {
                VStack(alignment: .center) {
                    Image(systemName: "envelope.fill")
                        .frame(width: 20, height: 16)
                }
                .frame(width: 30)
                TextField("Email", text: $email)
                    .font(Font.custom("Armata", size: 20))
                    .frame(maxWidth: .infinity)
            }
            .padding(.horizontal, 29)
            Divider()
                .overlay(isEmailValid ? .black : .red)
            Text(isEmailValid ? "" : "Invalid email")
                    .foregroundStyle(.red)
                    .font(Font.custom("Armata", size: 11))
                    .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .frame(alignment: .top)
    }
}

#Preview {
    EmailTextFieldComponent(email: .constant(""), isEmailValid: .constant(true))
}
