//
//  CategoryButton.swift
//  FreeMates
//
//  Created by 정수호 on 4/3/25.
//

import SwiftUI

struct CategoryButtonView: View {
    @State private var isSelected = 0
    
    var body: some View {
        LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 16) {
            Button {
                isSelected = 1
            } label: {
                ZStack {
                    Image("f_cafe")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 109, height: 109)
                    
                    Text("카페")
                        .font(.custom("Paperlogy", size: 24))
                        .bold()
                        .foregroundStyle(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.top, 65)
                        .padding(.trailing, 8)
                }
                .frame(width: 109, height: 109)
                .background(.primary100)
                .cornerRadius(12)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 0)
            }
            
            Button {
                isSelected = 2
            } label: {
                ZStack {
                    Image("f_walk")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 109, height: 109)
                    
                    Text("산책")
                        .font(.custom("Paperlogy", size: 24))
                        .bold()
                        .foregroundStyle(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.top, 65)
                        .padding(.trailing, 8)
                }
                .frame(width: 109, height: 109)
                .background(.primary100)
                .cornerRadius(12)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 0)
            }
            
            Button {
                isSelected = 3
            } label: {
                ZStack {
                    Image("f_play")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 109, height: 109)
                    
                    Text("놀거리")
                        .font(.custom("Paperlogy", size: 24))
                        .bold()
                        .foregroundStyle(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.top, 65)
                        .padding(.trailing, 8)
                }
                .frame(width: 109, height: 109)
                .background(.primary100)
                .cornerRadius(12)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 0)
            }
            
            Button {
                isSelected = 4
            } label: {
                ZStack {
                    Image("f_shopping")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 109, height: 109)
                    
                    Text("쇼핑")
                        .font(.custom("Paperlogy", size: 24))
                        .bold()
                        .foregroundStyle(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.top, 65)
                        .padding(.trailing, 8)
                }
                .frame(width: 109, height: 109)
                .background(.primary100)
                .cornerRadius(12)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 0)
            }
            
            Button {
                isSelected = 5
            } label: {
                ZStack {
                    Image("f_eating")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 109, height: 109)
                    
                    Text("먹거리")
                        .font(.custom("Paperlogy", size: 24))
                        .bold()
                        .foregroundStyle(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.top, 65)
                        .padding(.trailing, 8)
                }
                .frame(width: 109, height: 109)
                .background(.primary100)
                .cornerRadius(12)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 0)
            }
            
            Button {
                isSelected = 6
            } label: {
                ZStack {
                    Image("f_sports")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 109, height: 109)
                    
                    Text("스포츠")
                        .font(.custom("Paperlogy", size: 24))
                        .bold()
                        .foregroundStyle(.black)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding(.top, 65)
                        .padding(.trailing, 8)
                }
                .frame(width: 109, height: 109)
                .background(.primary100)
                .cornerRadius(12)
                .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 0)
            }
        }
        .padding()
        .padding(.vertical, 20)
    }
}



#Preview {
    CategoryButtonView()
}
