//
//  Home2View.swift
//  FreeMates
//
//  Created by 정수호 on 3/28/25.
//

import SwiftUI

struct Home2View: View {
    var body: some View {
        VStack {
            Image("Freemates.mint.big")
              .frame(width: 231, height: 139)
              .padding(.bottom, 22)
            
            Text("파인애플농부애옹님!\n공강을 채우러 가볼까요?")
              .font(Font.custom("Paperlogy", size: 18))
              .multilineTextAlignment(.center)
              .foregroundColor(.black)
        }
    }
}

#Preview {
    Home2View()
}
