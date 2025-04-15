//
//  CategoryView.swift
//  FreeMates
//
//  Created by 정수호 on 4/11/25.
//

import SwiftUI

struct CategoryView: View {
    @State private var selectedStates: [String: Bool] = [
        "콘센트가 있어요": false,
        "분위기가 좋아요": false,
        "와이파이 빵빵해요": false,
        "좌석이 많아요": false,
        "음악이 좋아요": false,
        "힐링하기 좋아요": false,
        "혼자서도 좋아요": false,
        "야외 좌석이 있어요": false,
        "화장실이 깨끗해요": false,
        "다같이 즐길 수 있어요": false,
        "편하게 오래 앉을 수 있어요": false,
        "조용해요": false,
        "가성비 좋아요": false,
        "책 읽기 좋아요": false,
        "밥 먹기 좋아요": false,
        "운동할 수 있어요": false,
        "사진 찍기 좋아요": false,
        "체험할 수 있어요": false,
        "놀이시설이 있어요": false,
        "쇼핑할 곳이 있어요": false,
        "건강한 음식 있어요": false
    ]
    @State private var number = 0
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    PlaceCategoryOn(category: "cafe")
                    PlaceCategoryOff(category: "walk")
                    PlaceCategoryOff(category: "shopping")
                    PlaceCategoryOff(category: "play")
                    PlaceCategoryOff(category: "sports")
                    PlaceCategoryOff(category: "eating")
                }
                .padding(.horizontal)
                .padding(.vertical, 8)
            }
            
            FilterView()
                .padding(.bottom, 40)
            
            Text("\(number)개")
                .font(.custom("SUIT", size: 12))
                .padding(.trailing, 343)
            
            Spacer()
        }
    }
}

#Preview {
    CategoryView()
}
