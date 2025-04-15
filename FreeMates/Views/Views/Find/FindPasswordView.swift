//
//  FindPasswordView.swift
//  FreeMates
//
//  Created by 정수호 on 3/28/25.
//

import SwiftUI

struct FindPasswordView: View {
    @State private var userName = ""
    @State private var phoneNumber = ""
    @State private var verificationCode = ""
    @State private var isPhoneVerifield = false
    @State private var FindUserName = false
    @State private var ChangePassword = false
    
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
                .padding(.bottom, 48)
            
            HStack() {
                TextField("전화번호를 입력해주세요.", text: $phoneNumber)
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
                                .background(Color("primary100"))
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
                            .foregroundColor(Color("natural100"))
                    }
                }
            }
            .padding(.bottom, 235)
            
            Button("아이디 찾기") {
                FindUserName = true
            }
            .font(.custom("SUIT", size: 12))
            .foregroundColor(Color("natural300"))
            .padding(.bottom, 32)
            .fullScreenCover(isPresented: $FindUserName) {
                FindUserNameView()
            }
            
            ZStack {
                if isPhoneVerifield {
                    Button(action: {
                        ChangePassword = true
                    }) {
                        Text("비밀번호 변경")
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
        
                    Text("비밀번호 변경")
                        .font(.custom("Paperlogy", size: 18))
                        .foregroundColor(Color("natural100"))
                }
            }
            .fullScreenCover(isPresented: $ChangePassword) {
                UserNameFoundView()
            }
        }
    }
}

struct FindPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        FindPasswordView()
    }
}
