//
//  SecureTextField.swift
//  FreeMates
//
//  Created by 정수호 on 3/20/25.
//

import SwiftUI

struct SecureTextField: View {
    @Binding var password: String
    @State private var isSecure: Bool = true

    var body: some View {
        ZStack {
            if isSecure {
                SecureField("비밀번호를 입력해주세요.", text: $password)
            } else {
                TextField("비밀번호를 입력해주세요.", text: $password)
            }
            
            HStack {
                Spacer()
                
                Button(action: {
                    isSecure.toggle()
                }) {
                    Image(isSecure ? "visiblity.slash" : "visiblity")
                        .foregroundColor(Color("natural200"))
                }
                .padding()
            }
        }
    }
}

