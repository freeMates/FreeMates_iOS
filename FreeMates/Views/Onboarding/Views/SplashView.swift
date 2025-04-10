//
//  SplashView.swift
//  FreeMates
//
//  Created by 정수호 on 3/19/25.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive = false

    var body: some View {
        ZStack {
            Color("primary100")
                .edgesIgnoringSafeArea(.all)

            Image("Freemates.white")
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                isActive = true
            }
        }
        .fullScreenCover(isPresented: $isActive) {
            LoginView()
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}
