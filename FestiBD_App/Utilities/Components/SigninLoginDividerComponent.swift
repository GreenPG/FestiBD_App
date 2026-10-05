//
//  SigninLoginDividerComponent.swift
//  FestiBD_App
//
//  Created by Apprenant76 on 05/10/2026.
//


HStack(spacing: 20) {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 150, height: 5)
                    .background(Color(red: 1, green: 0.86, blue: 0.34))
                Text("OR")
                    .font(Font.custom("Armata", size: 16))
                    .foregroundStyle(.appYellow)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 150, height: 5)
                    .background(Color(red: 1, green: 0.86, blue: 0.34))
            }