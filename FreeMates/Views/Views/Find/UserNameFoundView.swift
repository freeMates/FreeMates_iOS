//
//  UserNameFoundView.swift
//  FreeMates
//
//  Created by 정수호 on 3/28/25.
//

import SwiftUI

struct UserNameFoundView: View {
    @State private var UserName = "@fjkd388!"
    @State private var FindPassword = false
    @State private var Login = false
    
    var body: some View {
        VStack {
            Spacer()
            
            Text("아이디는")
              .font(Font.custom("Paperlogy", size: 22))
              .multilineTextAlignment(.center)
              .foregroundColor(.black)
            
            Text(UserName)
              .font(Font.custom("Paperlogy", size: 32))
              .multilineTextAlignment(.center)
              .foregroundColor(.black)
              .padding(3)
            
            Text("입니다.")
              .font(Font.custom("Paperlogy", size: 22))
              .multilineTextAlignment(.center)
              .foregroundColor(.black)
              .padding(.bottom, 233)
            
            Button("비밀번호 찾기") {
                FindPassword = true
            }
            .font(.custom("SUIT", size: 12))
            .foregroundColor(.natural300)
            .padding(.bottom, 32)
            
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
            .fullScreenCover(isPresented: $Login) {
                LoginView()
            }
            .fullScreenCover(isPresented: $FindPassword) {
                FindPasswordView()
            }
        }
    }
}

#Preview {
    UserNameFoundView()
}
