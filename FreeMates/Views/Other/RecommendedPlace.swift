//
//  RecommendedPlace.swift
//  FreeMates
//
//  Created by 정수호 on 4/4/25.
//

import SwiftUI

struct RecommendedPlace: View {
    let placeName: String
    let address: String
    let category: String
    let picture: String
    
    @State private var isLiked = false
    @State private var likeCount = 0
    
    @State private var selectedStates: [String: Bool] = [
        "콘센트가 있어요": false,
        "조용해요": false
    ]
    
    var body: some View {
        ZStack {
            ZStack {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 363, height: 88)
                    .background(.white)
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 0)
                
                HStack {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 72, height: 72)
                        .background(
                            Image(picture)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 72, height: 72)
                                .clipped()
                        )
                        .cornerRadius(4)
                        .offset(x: 27)
                    
                    VStack(alignment: .leading) {
                        Text(placeName)
                            .font(Font.custom("Paperlogy", size: 20))
                            .foregroundColor(.black)
                            .frame(width: 219, alignment: .topLeading)
                        
                        Text(address)
                            .font(Font.custom("SUIT", size: 8))
                            .foregroundColor(.natural300)
                            .frame(width: 169, alignment: .topLeading)
                            .offset(y: 2)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                PlaceCategorySmallOn(category: category)
                                
                                Circle()
                                    .frame(width: 2, height: 2)
                                    .foregroundColor(.primary200)
                                
                                LittleFilter(title: "콘센트가 있어요")
                                    .padding(.trailing, -5)
                                LittleFilter(title: "조용해요")
                            }
                        }
                        .offset(y: 14)
                    }
                    .offset(x: 30, y: -7)
                }
                .offset(x: 2)
            }
            
            VStack {
                Button {
                    isLiked.toggle()
                    likeCount += isLiked ? 1 : -1
                } label: {
                    Image("likebutton")
                        .renderingMode(.template)
                        .frame(width: 14, height: 14)
                        .foregroundColor(isLiked ? .red : .natural100)
                }
                
                Text("\(likeCount)")
                    .font(.custom("SUIT", size: 5))
                    .multilineTextAlignment(.center)
                    .foregroundColor(isLiked ? .red : .natural100)
            }
            .offset(x: 167, y: -25)
        }
    }
}

struct RecommendedPlace_Previews: PreviewProvider {
    static var previews: some View {
        RecommendedPlace(placeName: "브랫서울", address: "서울 광진구 광나루로 410 1층 101호", category: "cafe", picture: "cafe")
    }
}
