//
//  Home1View.swift
//  FreeMates
//
//  Created by 정수호 on 3/20/25.
//

import SwiftUI

struct Home1View: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Image("freemates.mint")
                .frame(width: 200, height: 64)
                .padding(32)
            
            Text("로그인 완료!")
                .font(Font.custom("Paperlogy", size: 18))
                .foregroundColor(.black)
        }
    }
}

struct Home1View_Previews: PreviewProvider {
    static var previews: some View {
        Home1View()
    }
}
