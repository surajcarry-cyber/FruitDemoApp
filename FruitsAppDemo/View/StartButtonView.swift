//
//  StartButtonView.swift
//  FruitsAppDemo
//
//  Created by Suraj Parshad on 10/02/26.
//

import SwiftUI

struct StartButtonView: View {
    var body: some View {
        Button(action: {
            
        }){
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }//HStack
            .padding(.horizontal,16)
            .padding(.vertical,10)
            .background(
                Capsule().strokeBorder(Color.white,lineWidth: 1.25)
            )
        }//Button
        .accentColor(.white)
    }
}

#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
}
