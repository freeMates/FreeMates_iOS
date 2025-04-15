//
//  LoginView.swift
//  FreeMates
//
//  Created by 정수호 on 3/19/25.
//

import SwiftUI

struct LoginView: View {
    @State private var userName: String = ""
    @State private var password: String = ""
    @State private var isKeyboardVisible = false
    @State private var showError = false
    @State private var isLoggedIn = false // 로그인 여부 확인
    @State private var isSignup = false
    @State private var FindUserName = false
    
    // 임시 계정 정보
    let correctUserName = "testUser"
    let correctPassword = "1234"
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Spacer()
                
                Image("freemates.mint")
                    .frame(width: 200, height: 64)
                
                Spacer()
                
                VStack {
                    TextField("아이디를 입력해주세요.", text: $userName)
                        .autocapitalization(.none)
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .font(.custom("SUIT", size: 15))
                        .frame(width: 327, height: 48)
                        .background(Color("naturalWhite"))
                        .foregroundColor(Color("natural300"))
                        .cornerRadius(50)
                        .shadow(radius: 2)
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 16)
                    
                    SecureTextField(password: $password)
                        .autocapitalization(.none)
                        .textInputAutocapitalization(.never)
                        .disableAutocorrection(true)
                        .font(.custom("SUIT", size: 15))
                        .frame(width: 327, height: 48)
                        .background(Color.white)
                        .cornerRadius(50)
                        .shadow(radius: 2)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 6)
                    
                    Text("아이디 및 비밀번호가 맞지 않습니다.")
                        .font(.custom("SUIT", size: 12))
                        .foregroundColor(showError ? .red : .white)
                }
                .padding(.vertical, 8)
                
                // 로그인 버튼
                Button(action: {
                    if userName == correctUserName && password == correctPassword {
                        isLoggedIn = true
                    } else {
                        showError = true
                    }
                }) {
                    Text("입장하기")
                        .font(.custom("Paperlogy", size: 18))
                        .foregroundColor(.black)
                        .frame(width: 327, height: 56)
                        .background(Color("primary200"))
                        .cornerRadius(50)
                        .shadow(radius: 2)
                }
                .padding(.vertical, 5)
                
                HStack {
                    Button("아이디 찾기") {
                        FindUserName = true
                    }
                    .font(.custom("SUIT", size: 12))
                    .foregroundColor(Color("natural300"))
                    
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 1, height: 11)
                        .background(Color(red: 0.74, green: 0.74, blue: 0.74))
                    
                    Button("회원가입") {
                        isSignup = true
                    }
                    .font(.custom("SUIT", size: 12))
                    .foregroundColor(Color("natural300"))
                }
                .fullScreenCover(isPresented: $FindUserName) {
                    FindUserNameView()
                }
                .fullScreenCover(isPresented: $isSignup) {
                    SignupView()
                }
                
                Spacer()
            }
            .padding()
            .offset(y: isKeyboardVisible ? -150 : 0) // 키보드 올라오면 뷰 이동
            .animation(.easeInOut, value: isKeyboardVisible)
        }
        .onReceive(NotificationCenter.default.publisher(for: UIResponder.keyboardWillShowNotification)) { _ in
            isKeyboardVisible = true
        }
        .onReceive(NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)) { _ in
            isKeyboardVisible = false
        }
        .fullScreenCover(isPresented: $isLoggedIn) {
            Home1View()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
