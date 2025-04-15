//
//  SignupView.swift
//  FreeMates
//
//  Created by 정수호 on 3/19/25.
//

import SwiftUI

struct SignupView: View {
    @State private var userName = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @State private var phoneNumber = ""
    @State private var verificationCode = ""
    
    @State private var isUserNameLengthValid = false
    @State private var isUserNameValid = false
    @State private var isPasswordValid = false
    @State private var isPhoneVerifield = false
    @State private var isSignupSuccess = false
    @State private var isValidClicked = false
    
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
            
            VStack {
                Image("freemates.mint")
                  .frame(width: 200, height: 64)
                  .padding(.vertical, 13)
                
                Text("프리메이트를 시작합니다!")
                    .font(.custom("Paperlogy", size: 22))
            }
            .padding(78)
            
            HStack {
                TextField("아이디를 입력해주세요.", text: $userName)
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
                    if userName.count > 8 {
                        isUserNameLengthValid = false
                    } else {
                        // TODO: 아이디 중복 확인 API 호출
                        // isUserNameCheck = true
                    }
                    
                    isValidClicked = true
                }) {
                    Text("중복 확인")
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
            
            ZStack {
                if isValidClicked == true {
                    if isUserNameLengthValid == false {
                       Text("8자 이하로 입력해주세요.")
                           .font(.custom("SUIT", size: 12))
                           .padding(.trailing, 170)
                           .foregroundColor(.red)
                   } else if isUserNameValid == false {
                       Text("중복되는 아이디입니다.")
                           .font(.custom("SUIT", size: 12))
                           .padding(.trailing, 180)
                           .foregroundColor(.red)
                   } else {
                       Text("사용 가능한 아이디입니다.")
                           .font(.custom("SUIT", size: 12))
                           .padding(.trailing, 170)
                           .foregroundColor(Color("natural300"))
                   }
                }
            }
            .padding(.bottom, isValidClicked == true ? 10 : 30)
            
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
                .padding(.bottom, 40)
            
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
                    .background(Color("naturalWhite"))
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
            .padding(.bottom, 40)
            
            ZStack {
                if isUserNameValid == true && isPasswordValid == true && isPhoneVerifield == true {
                    Button(action: {
                        isSignupSuccess = true
                    }) {
                        Text("회원가입 하기")
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
        
                    Text("회원가입 하기")
                        .font(.custom("Paperlogy", size: 18))
                        .foregroundColor(.natural100)
                }
            }
            .fullScreenCover(isPresented: $isSignupSuccess) {
                UserInfoView()
            }
            
            Spacer()
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
