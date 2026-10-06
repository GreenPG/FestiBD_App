//
//  SigninLoginButtonComponent.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 05/10/2026.
//

import SwiftUI

struct SigninLoginButtonComponent: View {

    var isLogin: Bool
     var isDisabled: Bool

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .background(isDisabled ? .disableSecondary : .appYellow)
                .frame(width: 330, height: 62)
                .border(.black, width: 3)
                .cornerRadius(5)
                .padding(.top, 15)
                .padding(.leading, 15)
            HStack(alignment: .center) {
                Text(isLogin ? "LOG IN" : "SIGN IN")
                    .font(Font.custom("ComicsTricks", size: 32))
                    .foregroundStyle(.white)
                            .padding(.vertical, 24)
            }
            .frame(width: 330, height: 62)
            .background(isDisabled ? .disableMain : .accent)
            .border(.black, width: 3)
            .cornerRadius(5)
        }
        .frame(width: 330, height: 62)
    }
}

#Preview {
    SigninLoginButtonComponent(isLogin: true, isDisabled: true)
}
