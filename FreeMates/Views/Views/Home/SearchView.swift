//
//  SearchView.swift
//  FreeMates
//
//  Created by 정수호 on 4/10/25.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText: String = ""
    @State private var searchHistory: [String] = []
    @State private var isSearchCompleted = false
    
    var body: some View {
        VStack {
            HStack {
                TextField("공강을 어떻게 채울까요?", text: .constant(""))
                    .autocapitalization(.none)
                    .textInputAutocapitalization(.never)
                    .disableAutocorrection(true)
                    .foregroundColor(.black)
                    .font(.custom("SUIT", size: 15))
                    .padding(.leading, 16)
                    .frame(width: 343, height: 36)
                    .background(.white)
                    .cornerRadius(50)
                    .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 0)
                    .padding(.horizontal, 10)
                    .multilineTextAlignment(.leading)
                
                Spacer()
                
                Button {
                    // TODO: 검색 완료
                    isSearchCompleted = true
                } label: {
                    Image("search")
                        .frame(width: 20, height: 20)
                        .foregroundColor(.natural300)
                        .offset(x: -8)
                }
            }
            .padding()
            
            Text("최근 검색 기록")
                .font(
                    Font.custom("SUIT", size: 15)
                        .weight(.semibold)
                )
                .foregroundColor(.natural300)
                .padding(.trailing, 255)
            
            Spacer()
        }
        .navigationBarTitleDisplayMode(.inline)
    }
}


struct SearchResultView: View {
    var body: some View {
        Text("SearchResultView")
    }
}

#Preview {
    SearchView()
}
