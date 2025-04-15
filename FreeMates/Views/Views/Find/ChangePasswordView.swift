//
//  ChangePasswordView.swift
//  FreeMates
//
//  Created by 정수호 on 3/28/25.
//

import SwiftUI

struct ChangePasswordView: View {
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var Login = false
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    // TODO: 뒤로 가기
                } label: {
                    Image("back")
                        .frame(width: 24, height: 24)
                }
                
                Spacer()
            }
            .padding(.horizontal)
            .padding(.vertical)
            
            Spacer()
            
            Text("비밀번호 변경")
              .font(Font.custom("Paperlogy", size: 22))
              .multilineTextAlignment(.center)
              .foregroundColor(.black)
              .padding(.bottom, 80)
            
            VStack {
                SecureTextField(password: $password)
                    .font(.custom("SUIT", size: 15))
                    .frame(width: 327, height: 40)
                    .background(Color.white)
                    .cornerRadius(50)
                    .shadow(radius: 2)
                    .multilineTextAlignment(.center)
                    .padding(3)
                
                
                Text("10자 이상, 영문, 숫자,특수문자 중 2종류 이상 조합")
                    .font(.custom("SUIT", size: 12))
                    .padding(.trailing, 55)
                    .foregroundColor(Color("natural300"))
            }
            .padding(.bottom, 10)
            
            SecureTextField(password: $confirmPassword)
                .font(.custom("SUIT", size: 15))
                .frame(width: 327, height: 40)
                .background(Color.white)
                .cornerRadius(50)
                .shadow(radius: 2)
                .multilineTextAlignment(.center)
                .padding(.bottom, 345)
            
            ZStack {
                if !password.isEmpty && !confirmPassword.isEmpty {
                    Button(action: {
                        Login = true
                    }) {
                        Text("로그인 하러가기")
                            .font(.custom("Paperlogy", size: 18))
                            .foregroundColor(.black)
                            .frame(width: 327, height: 56)
                            .background(.primary200)
                            .cornerRadius(50)
                            .shadow(radius: 2)
                    }
                } else {
                    Rectangle()
                        .frame(width: 327, height: 56)
                        .foregroundColor(Color.gray.opacity(0.1))
                        .cornerRadius(50)
                        .shadow(radius: 2)
        
                    Text("로그인 하러가기")
                        .font(.custom("Paperlogy", size: 18))
                        .foregroundColor(.natural100)
                }
            }
            .fullScreenCover(isPresented: $Login) {
                
            }
        }
    }
}

#Preview {
    ChangePasswordView()
}
