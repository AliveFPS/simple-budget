//
//  StartScreen.swift
//  Simple Budget
//
//  Created by Christopher Pena on 8/12/24.
//

import SwiftUI

struct StartScreenView: View {
    @State private var opacity: Double = 0
    
    var body: some View {
        VStack {
            Image("dollar-icon")
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
        }
        .opacity(opacity)
        .onAppear {
            withAnimation(.easeIn(duration: 1)) {
                opacity = 1
            }
        }
        .onDisappear {
            withAnimation(.easeOut(duration: 1)) {
                opacity = 0
            }
        }
    }
}

#Preview {
    StartScreenView()
}
