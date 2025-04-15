//
//  HomeView.swift
//  FreeMates
//
//  Created by 정수호 on 3/28/25.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
            VStack {
                ScrollView {
                    VStack(alignment: .leading) {
                        ZStack {
                            Image("forest")
                                .resizable()
                                .scaledToFit()
                            
                            
                            Text("30분 공강,\n이렇게 채워보세요! 추천 30분 코스")
                                .font(Font.custom("Paperlogy", size: 22))
                                .foregroundColor(.white)
                                .padding(.trailing, 60)
                                .padding(.top, 100)
                        }
                        
                        CategoryButtonView()
                            .zIndex(1)
                        
                        Text("지금 인기있는 즐겨찾기 리스트")
                            .font(Font.custom("Paperlogy", size: 16))
                            .foregroundColor(.black)
                            .padding(.horizontal, 20)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                FavoriteItem(image: "dog", text: "카공이 필요할 때...", id: "파인애플농부애옹")
                                FavoriteItem(image: "comedian", text: "먹짱", id: "뚱쭝이")
                                FavoriteItem(image: "falling", text: "마음이 울적해 ㅠ", id: "오펜하이머")
                            }
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 40)
                        
                        Text("프리메이트가 추천하는 장소")
                            .font(Font.custom("Paperlogy", size: 16))
                            .foregroundColor(.black)
                            .padding(.horizontal, 20)
                            .padding(.bottom, 3)
                        
                        ForEach (0..<4) { _ in
                            RecommendedPlace(placeName: "브랫서울", address: "서울 광진구 광나루로 410 1층 101호", category: "cafe", picture: "cafe")
                                .padding(.horizontal, 20)
                                .padding(.bottom, 4)
                        }
                    }
                }
            }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
