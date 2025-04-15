//
//  FindUserNameView.swift
//  FreeMates
//
//  Created by 정수호 on 3/28/25.
//

import SwiftUI

struct FindUserNameView: View {
    @State private var phoneNumber = ""
    @State private var verificationCode = ""
    @State private var isPhoneVerifield = false
    @State private var FindPassword = false
    @State private var isSignup = false
    @State private var UserNameFound = false
    
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
            
            Text("아이디 찾기")
              .font(Font.custom("Paperlogy", size: 22))
              .multilineTextAlignment(.center)
              .foregroundColor(.black)
              .padding(.bottom, 80)
            
            HStack() {
                TextField("전화번호를 입력해주세요.", text: $phoneNumber)
                    .autocapitalization(.none)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .font(.custom("SUIT", size: 15))
                    .frame(width: 258, height: 40)
                    .background(Color("naturalWhite"))
                    .cornerRadius(50, corners: [.topLeft, .bottomLeft])
                    .cornerRadius(5, corners: [.topRight, .bottomRight])
                    .shadow(radius: 2)
                    .multilineTextAlignment(.center)
                
                Button(action: {
                    // TODO: 인증번호 확인 API
                    // isPhoneVerifield = true
                }) {
                    Text("인증하기")
                        .font(.custom("SUIT", size: 12))
                        .bold()
                        .foregroundColor(.black)
                        .frame(width: 61, height: 40)
                        .background(.primary200)
                        .cornerRadius(5, corners: [.topLeft, .bottomLeft])
                        .cornerRadius(50, corners: [.topRight, .bottomRight])
                        .shadow(radius: 2)
                }
            }
            .padding(.bottom, 5)
            
            HStack() {
                TextField("인증번호를 입력해주세요.", text: $verificationCode)
                    .autocapitalization(.none)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .font(.custom("SUIT", size: 15))
                    .frame(width: 258, height: 40)
                    .background(.white)
                    .cornerRadius(50, corners: [.topLeft, .bottomLeft])
                    .cornerRadius(5, corners: [.topRight, .bottomRight])
                    .shadow(radius: 2)
                    .multilineTextAlignment(.center)
                
                ZStack {
                    if isPhoneVerifield == true {
                        Button(action: {
                            // 전화번호 인증 확인 후
                        }) {
                            Text("확인")
                                .font(.custom("SUIT", size: 12))
                                .bold()
                                .foregroundColor(.black)
                                .frame(width: 61, height: 40)
                                .background(.primary200)
                                .cornerRadius(5, corners: [.topLeft, .bottomLeft])
                                .cornerRadius(50, corners: [.topRight, .bottomRight])
                                .shadow(radius: 2)
                        }
                    } else {
                        Rectangle()
                            .frame(width: 61, height: 40)
                            .foregroundColor(Color.gray.opacity(0.1))
                            .cornerRadius(5, corners: [.topLeft, .bottomLeft])
                            .cornerRadius(50, corners: [.topRight, .bottomRight])
                            .shadow(radius: 2)
                        
                        Text("확인")
                            .font(.custom("SUIT", size: 12))
                            .bold()
                            .foregroundColor(.natural100)
                    }
                }
            }
            .padding(.bottom, 323)
            
            HStack {
                Button("비밀번호 찾기") {
                    FindPassword = true
                }
                .font(.custom("SUIT", size: 12))
                .foregroundColor(.natural300)
                
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 1, height: 11)
                    .background(Color(red: 0.74, green: 0.74, blue: 0.74))
                
                Button("회원가입") {
                    isSignup = true
                }
                .font(.custom("SUIT", size: 12))
                .foregroundColor(.natural300)
            }
            .fullScreenCover(isPresented: $FindPassword) {
                ChangePasswordView()
            }
            .fullScreenCover(isPresented: $isSignup) {
                SignupView()
            }
            .padding(.bottom, 32)
            
            ZStack {
                if isPhoneVerifield {
                    Button(action: {
                        UserNameFound = true
                    }) {
                        Text("아이디 찾기")
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
        
                    Text("아이디 찾기")
                        .font(.custom("Paperlogy", size: 18))
                        .foregroundColor(.natural100)
                }
            }
            .fullScreenCover(isPresented: $UserNameFound) {
                UserNameFoundView()
            }
        }
    }
}

struct FindUserNameView_Previews: PreviewProvider {
    static var previews: some View {
        FindUserNameView()
    }
}
