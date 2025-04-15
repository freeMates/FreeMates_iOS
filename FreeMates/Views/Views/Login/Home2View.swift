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
            Image("freemates.mint")
              .frame(width: 200, height: 64)
              .padding(.bottom, 22)
            
            Text("파인애플농부애옹님!\n공강을 채우러 가볼까요?")
              .font(Font.custom("Paperlogy", size: 18))
              .multilineTextAlignment(.center)
              .foregroundColor(.black)
        }
    }
}

struct Home2View_Previews: PreviewProvider {
    static var previews: some View {
        Home2View()
    }
}
