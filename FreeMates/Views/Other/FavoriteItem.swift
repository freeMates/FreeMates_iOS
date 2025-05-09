//
//  FavoriteItem.swift
//  FreeMates
//
//  Created by 정수호 on 4/3/25.
//

import SwiftUI

struct FavoriteItem: View {
    let image: String
    let text: String
    let id: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(width: 124, height: 160)
                .background(.white)
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 0)
            
            VStack {
                Image(image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 108, height: 108)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                
                HStack {
                    Text(text)
                        .font(Font.custom("Paperlogy", size: 14))
                        .foregroundColor(.primary400)
                        .lineLimit(1)
                        .truncationMode(.tail)
                    
                    Spacer()
                }
                .padding(.horizontal, 8)
                .padding(.bottom, 2)
                
                HStack {
                    Text("@\(id)")
                        .font(Font.custom("SUIT", size: 8))
                        .foregroundColor(.natural300)
                        .lineLimit(1)
                        .truncationMode(.tail)
                    
                    Spacer()
                }
                .padding(.horizontal, 8)
            }
        }
        .frame(width: 124, height: 160)
    }
}

struct FavoriteItem_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteItem(image: "dog", text: "카공이 필요할 때...", id: "파인애플농부애옹")
    }
}
