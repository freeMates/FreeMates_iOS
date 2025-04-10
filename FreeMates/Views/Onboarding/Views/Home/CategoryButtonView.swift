//
//  CategoryButton.swift
//  FreeMates
//
//  Created by 정수호 on 4/3/25.
//

import SwiftUI

struct CategoryButtonView: View {
    let title: String
    let image: String
    
    var body: some View {
        Button {
            
        } label: {
            ZStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 109, height: 109)
                
                Text(title)
                    .font(.custom("Paperlogy", size: 24))
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(.top, 73)
                    .padding(.trailing, 8)
            }
            .frame(width: 109, height: 109)
            .background(.primary100)
            .cornerRadius(12)
            .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 0)
        }
    }
}


#Preview {
    CategoryButtonView(title: "", image: "")
}
