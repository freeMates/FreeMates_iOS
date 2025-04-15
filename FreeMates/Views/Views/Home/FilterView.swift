//
//  FilterView.swift
//  FreeMates
//
//  Created by 정수호 on 4/11/25.
//

import SwiftUI

struct FilterView: View {
    @State private var isFilterActive = false
    @State private var selectedFiltered = false
    
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
    
    var body: some View {
        HStack {
            Button {
                isFilterActive.toggle()
            } label: {
                Image("filter.\(selectedFiltered ? "on" : "off")")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 24)
            }
            
            Spacer()
            
            if isFilterActive {
                Button {
                    selectedFiltered = selectedStates.contains(where: { $0.value })
                    isFilterActive = false
                    print("선택된 칩들:", selectedStates.filter { $0.value }.map { $0.key })
                } label: {
                    Image("done.\(selectedFiltered ? "on" : "off")")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 45, height: 23)
                }
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        
        if isFilterActive {
            Filter(selectedStates: $selectedStates)
        }
    }
}

struct Filter: View {
    @Binding var selectedStates: [String: Bool]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 10) {
                ForEach(selectedStates.keys.sorted(), id: \.self) { key in
                    FilterChip(
                        title: key,
                        isSelected: Binding(
                            get: { selectedStates[key] ?? false },
                            set: { selectedStates[key] = $0 }
                        )
                    )
                }
            }
            .padding(.horizontal)
        }
    }
}

struct FilterChip: View {
    let title: String
    @Binding var isSelected: Bool
    
    var body: some View {
        Button(action: {
            isSelected.toggle()
        }) {
            Text(title)
                .font(.system(size: 15))
                .foregroundColor(isSelected ? .black : .natural200)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .inset(by: 0.5)
                        .stroke(isSelected ? .primary300 : .natural200, lineWidth: 1)
                )
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                )
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    FilterView()
}
