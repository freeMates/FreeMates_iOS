//
//  ContentView.swift
//  FreeMates
//
//  Created by 정수호 on 3/19/25.
//

import SwiftUI

struct ContentView: View {
    @State var index = 0
    @State private var showSearch = false
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Image("freemates.mint")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100)
                    
                    Spacer()
                    
                    Button {
                        showSearch = true
                    } label : {
                        Image("search")
                            .frame(width: 20, height: 20)
                            .foregroundColor(.natural300)
                    }
                }
                .padding(.horizontal)
                .padding(.top, -20)
                .padding(.bottom, -25)
                
                if self.index == 0 {
                    HomeView()
                } else if self.index == 1 {
                    MapView()
                } else if self.index == 2 {
                    RecommendationView()
                } else if self.index == 3 {
                    MyView()
                }
                
                Spacer()
                
                CustomTabs(index: self.$index)
            }
            .ignoresSafeArea(edges: .bottom)
            .navigationDestination(isPresented: $showSearch) {
                SearchView()
                    .navigationBarBackButtonHidden(true)
            }
        }
    }
}

struct CustomTabs: View {
    @Binding var index: Int
    
    var body: some View {
        
        HStack(alignment: .center) {
            Spacer()
            
            Button(action: {
                self.index = 0
            }) {
                Image("f_home")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 36)
                    .foregroundColor(self.index == 0 ? .primary300 : .natural200)
                    .offset(y: -10)
            }
            
            Spacer(minLength: 55)
            
            Button(action: {
                self.index = 1
            }) {
                Image("f_map")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 36)
                    .foregroundColor(self.index == 1 ? .primary300 : .natural200)
                    .offset(y: -10)
            }
            
            Spacer(minLength: 55)
            
            Button(action: {
                self.index = 2
            }) {
                Image("f_heart")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 36)
                    .foregroundColor(self.index == 2 ? .primary300 : .natural200)
                    .offset(y: -10)
            }
            
            Spacer(minLength: 55)
            
            Button(action: {
                self.index = 3
            }) {
                Image("f_my")
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 36)
                    .foregroundColor(self.index == 3 ? .primary300 : .natural200)
                    .offset(y: -10)
            }
            
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width, height: 113)
        .background(Color.white.shadow(color: .black.opacity(0.2), radius: 5, y: -3))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
