//
//  FruitView.swift
//  FruitsAppDemo
//
//  Created by Suraj Parshad on 10/02/26.
//

import SwiftUI

struct FruitView: View {
    
    // MARK: Property
    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 20){
                // Fruit: Image
                Image("blueberry")
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red :0, green: 0, blue: 0, opacity : 0.15), radius: 8,x: 6,y: 8)
                    .scaleEffect(isAnimating ? 1: 0.6)
                // Fruit: Title
                Text("Blueberry")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red : 0, green: 0, blue: 0,opacity: 0.15), radius: 2,x: 2,y: 2)
                // Fruit: Headline
                
                Text("Blueberry is sweet,nutritious,and widely popular all over the world.")
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,16)
                    .frame(maxWidth: 400)
                
                //Button Start
                StartButtonView()
            }//VStack
        }//ZStack
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0, maxHeight: .infinity,alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal,20)
    }
}

#Preview {
    FruitView()
        .previewLayout(.fixed(width: 320, height: 640))
}
