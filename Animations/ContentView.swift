//
//  ContentView.swift
//  Animations
//
//  Created by Leoni Bernabe on 26/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 0.0
    
    var body: some View {
        Button("Tap me"){
            withAnimation{
                animationAmount+=360
            }
        }
        .padding(50)
        .background(.red)
        .foregroundStyle(.white)
        .clipShape(.circle)
        .rotation3DEffect(
            .degrees(animationAmount),
            axis: (x: 1.0, y: 0.0, z: 0.0)
        )
    }
}

#Preview {
    ContentView()
}
