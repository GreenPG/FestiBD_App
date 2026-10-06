//
//  UsernameTextFieldComponent.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 06/10/2026.
//

import SwiftUI

struct UsernameTextFieldComponent: View {

    @Binding var username: String
    @Binding var isUsernameValid: Bool

    var body: some View  {
        VStack {
            HStack(spacing: 30) {
                VStack(alignment: .center) {
                    Image(systemName: "person.fill")
                        .frame(width: 20, height: 16)
                }
                TextField("Name", text: $username)
                    .font(Font.custom("Armata", size: 20))
                    .frame(maxWidth: .infinity)
                    .autocorrectionDisabled()
                    .textInputAutocapitalization(.never)
            }
            .padding(.horizontal, 29)
            Divider()
                .overlay(.black)
            Text(isUsernameValid ? "" : "Invalid username")
                    .foregroundStyle(.red)
                    .font(Font.custom("Armata", size: 11))
                    .frame(maxWidth: .infinity, alignment: .trailing)
        }
    }
}

#Preview {
    UsernameTextFieldComponent(username: .constant(""), isUsernameValid: .constant(true))
}
