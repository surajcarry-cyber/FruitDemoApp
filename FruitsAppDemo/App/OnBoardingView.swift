//
//  OnBoardingView.swift
//  FruitsAppDemo
//
//  Created by Suraj Parshad on 10/02/26.
//

import SwiftUI

struct OnBoardingView: View {
    var body: some View {
                TabView {
                    ForEach(0..<5){ item in
                        FruitView()
                    }//Loop
                } //TabView
                .tabViewStyle(PageTabViewStyle())
                    .padding(.vertical ,20)
            }
//        TabView {
//            ForEach(0..<5, id: \.self) { item in
//                FruitView()
//            }//Loop
//        } //: TabView
//        .tabViewStyle(PageTabViewStyle())
//        .padding(.vertical, 20)
//    }
}
#Preview {
    OnBoardingView()
}
