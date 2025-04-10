//
//  GenderButton.swift
//  FreeMates
//
//  Created by 정수호 on 3/27/25.
//

import SwiftUI

struct GenderButton: View {
    @State private var gender = 0
    
    var body: some View {
        HStack {
            Button(action: {
                gender = 0
            }) {
                Text("남성")
                    .font(.custom("SUIT", size: 15))
                    .bold()
                    .foregroundColor(.black)
                    .frame(width: 160, height: 40)
                    .background(gender == 0 ? Color("primary100") : .white)
                    .cornerRadius(50)
                    .shadow(color: .black.opacity(0.16), radius: 3, x: 0, y: 0)
            }
            
            Button(action: {
                gender = 1
            }) {
                Text("여성")
                    .font(.custom("SUIT", size: 15))
                    .bold()
                    .foregroundColor(.black)
                    .frame(width: 160, height: 40)
                    .background(gender == 1 ? Color("primary100") : .white)
                    .cornerRadius(50)
                    .shadow(color: .black.opacity(0.16), radius: 3, x: 0, y: 0)
            }
        }
    }
}
