//
//  EmailTextFieldComponent.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 05/10/2026.
//

import SwiftUI

struct EmailTextFieldComponent: View {

    @Binding var email: String

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
            }
            Divider()
                .overlay(.black)
        }
    }
}

#Preview {
    EmailTextFieldComponent(email: .constant(""))
}
