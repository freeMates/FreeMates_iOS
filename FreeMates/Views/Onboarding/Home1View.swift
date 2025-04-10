//
//  HomeView.swift
//  FreeMates
//
//  Created by 정수호 on 3/20/25.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Image("Freemates.mint.big")
                .frame(width: 231, height: 139)
                .padding(32)
            
            Text("로그인 완료!")
                .font(Font.custom("Paperlogy", size: 18))
                .foregroundColor(.black)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
