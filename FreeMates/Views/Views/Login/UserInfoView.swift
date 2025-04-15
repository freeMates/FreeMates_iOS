//
//  UserInfoView.swift
//  FreeMates
//
//  Created by 정수호 on 3/20/25.
//

import SwiftUI

struct UserInfoView: View {
    @State private var nickName = ""
    @State private var birth_year = 0
    @State private var gender = 0
    
    @State private var isNickNameValid = false
    @State private var isAgeValid = false
    @State private var isUserInfoSuccess = false
    
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
            
            Image("freemates.mint")
                .frame(width: 200, height: 64)
                .padding()
            
            Text("기본 설정을 완료해주세요.")
              .font(Font.custom("Paperlogy", size: 22))
              .multilineTextAlignment(.center)
              .foregroundColor(.black)
              .padding(.bottom, 70)
            
            TextField("닉네임을 입력해주세요.", text: $nickName)
                .autocapitalization(.none)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .font(.custom("SUIT", size: 15))
                .frame(width: 327, height: 40)
                .background(Color("naturalWhite"))
                .foregroundColor(Color("natural300"))
                .cornerRadius(50)
                .shadow(color: .black.opacity(0.16), radius: 3, x: 0, y: 0)
                .multilineTextAlignment(.center)
                .padding(.bottom, 2)
            
            Text("8자 이하로 입력해주세요.")
                .font(.custom("SUIT", size: 12))
                .padding(.trailing, 170)
                .foregroundColor(.red)
                .padding(.bottom, 32)
            
            TextField("나이를 입력해주세요.", text: $nickName)
                .autocapitalization(.none)
                .textInputAutocapitalization(.never)
                .disableAutocorrection(true)
                .font(.custom("SUIT", size: 15))
                .frame(width: 327, height: 40)
                .background(Color("naturalWhite"))
                .foregroundColor(Color("natural300"))
                .cornerRadius(50)
                .shadow(color: .black.opacity(0.16), radius: 3, x: 0, y: 0)
                .multilineTextAlignment(.center)
                .padding(.bottom, 44)
            
            Text("성별을 선택해주세요.")
              .font(Font.custom("SUIT", size: 12))
              .foregroundColor(Color("natural300"))
              .padding(.trailing, 200)
              .padding(.bottom, 3)
            
            GenderButton()
                .padding(.bottom, 136)
            
            ZStack {
                if isNickNameValid && isAgeValid {
                    Button(action: {
                        isUserInfoSuccess = true
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
            .fullScreenCover(isPresented: $isUserInfoSuccess) {
                Home2View()
            }
        }
    }
}

struct UserInfoView_Previews: PreviewProvider {
    static var previews: some View {
        UserInfoView()
    }
}
