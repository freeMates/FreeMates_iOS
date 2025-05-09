//
//  PlaceCategory.swift
//  FreeMates
//
//  Created by 정수호 on 4/4/25.
//

import SwiftUI

struct PlaceCategoryOn: View {
    let category: String
    
    var imageName: String {
        switch category {
        case "cafe":
            return "category.cafe.on"
        case "eating":
            return "category.eating.on"
        case "play":
            return "category.playing.on"
        case "shopping":
            return "category.shopping.on"
        case "sports":
            return "category.sports.on"
        case "walk":
            return "category.walk.on"
        default:
            return "category.cafe.on"
        }
    }
    
    var text: String {
        switch category {
        case "cafe":
            return "카페"
        case "eating":
            return "먹거리"
        case "play":
            return "놀거리"
        case "shopping":
            return "쇼핑"
        case "sports":
            return "스포츠"
        case "walk":
            return "산책"
        default:
            return "기타"
        }
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 20)
            
            Text(text)
                .font(Font.custom("Paperlogy", size: 16))
                .foregroundColor(.secondary200)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 6)
        .background(.primary200)
        .cornerRadius(30)
    }
}

struct PlaceCategoryOff: View {
    let category: String
    
    var imageName: String {
        switch category {
        case "cafe":
            return "category.cafe.off"
        case "eating":
            return "category.eating.off"
        case "play":
            return "category.playing.off"
        case "shopping":
            return "category.shopping.off"
        case "sports":
            return "category.sports.off"
        case "walk":
            return "category.walk.off"
        default:
            return "category.cafe.off"
        }
    }
    
    var text: String {
        switch category {
        case "cafe":
            return "카페"
        case "eating":
            return "먹거리"
        case "play":
            return "놀거리"
        case "shopping":
            return "쇼핑"
        case "sports":
            return "스포츠"
        case "walk":
            return "산책"
        default:
            return "기타"
        }
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 20)
            
            Text(text)
                .font(Font.custom("Paperlogy", size: 16))
                .foregroundColor(.natural200)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 6)
        .background(.white)
        .cornerRadius(30)
        .shadow(color: .black.opacity(0.15), radius: 2, x: 0, y: 0)
    }
}

struct PlaceCategorySmallOn: View {
    let category: String
    
    var imageName: String {
        switch category {
        case "cafe":
            return "category.cafe.on"
        case "eating":
            return "category.eating.on"
        case "play":
            return "category.playing.on"
        case "shopping":
            return "category.shopping.on"
        case "sports":
            return "category.sports.on"
        case "walk":
            return "category.walk.on"
        default:
            return "category.cafe.on"
        }
    }
    
    var text: String {
        switch category {
        case "cafe":
            return "카페"
        case "eating":
            return "먹거리"
        case "play":
            return "놀거리"
        case "shopping":
            return "쇼핑"
        case "sports":
            return "스포츠"
        case "walk":
            return "산책"
        default:
            return "기타"
        }
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 12)
            
            Text(text)
                .font(Font.custom("Paperlogy", size: 12))
                .foregroundColor(.secondary200)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 3)
        .background(.primary200)
        .cornerRadius(30)
    }
}

struct PlaceCategorySmallOff: View {
    let category: String
    
    var imageName: String {
        switch category {
        case "cafe":
            return "category.cafe.off"
        case "eating":
            return "category.eating.off"
        case "play":
            return "category.playing.off"
        case "shopping":
            return "category.shopping.off"
        case "sports":
            return "category.sports.off"
        case "walk":
            return "category.walk.off"
        default:
            return "category.cafe.off"
        }
    }
    
    var text: String {
        switch category {
        case "cafe":
            return "카페"
        case "eating":
            return "먹거리"
        case "play":
            return "놀거리"
        case "shopping":
            return "쇼핑"
        case "sports":
            return "스포츠"
        case "walk":
            return "산책"
        default:
            return "기타"
        }
    }
    
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 12)
            
            Text(text)
                .font(Font.custom("Paperlogy", size: 12))
                .foregroundColor(.natural200)
        }
        .padding(.horizontal, 12)
        .padding(.vertical, 3)
        .background(.white)
        .cornerRadius(30)
    }
}

struct PlaceCategory_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            HStack {
                VStack(spacing: 10) {
                    PlaceCategoryOn(category: "cafe")
                    PlaceCategoryOn(category: "eating")
                    PlaceCategoryOn(category: "play")
                    PlaceCategoryOn(category: "shopping")
                    PlaceCategoryOn(category: "sports")
                    PlaceCategoryOn(category: "walk")
                    PlaceCategoryOn(category: "unknown")
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                
                VStack(spacing: 10) {
                    PlaceCategoryOff(category: "cafe")
                    PlaceCategoryOff(category: "eating")
                    PlaceCategoryOff(category: "play")
                    PlaceCategoryOff(category: "shopping")
                    PlaceCategoryOff(category: "sports")
                    PlaceCategoryOff(category: "walk")
                    PlaceCategoryOff(category: "unknown")
                }
                .padding()
                .background(Color.gray.opacity(0.1))
            }
            
            HStack {
                VStack(spacing: 10) {
                    PlaceCategorySmallOn(category: "cafe")
                    PlaceCategorySmallOn(category: "eating")
                    PlaceCategorySmallOn(category: "play")
                    PlaceCategorySmallOn(category: "shopping")
                    PlaceCategorySmallOn(category: "sports")
                    PlaceCategorySmallOn(category: "walk")
                    PlaceCategorySmallOn(category: "unknown")
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                
                VStack(spacing: 10) {
                    PlaceCategorySmallOff(category: "cafe")
                    PlaceCategorySmallOff(category: "eating")
                    PlaceCategorySmallOff(category: "play")
                    PlaceCategorySmallOff(category: "shopping")
                    PlaceCategorySmallOff(category: "sports")
                    PlaceCategorySmallOff(category: "walk")
                    PlaceCategorySmallOff(category: "unknown")
                }
                .padding()
                .background(Color.gray.opacity(0.1))
            }
        }
    }
}
