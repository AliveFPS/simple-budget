//
//  RootView.swift
//  Simple Budget
//
//  Created by Christopher Pena on 8/12/24.
//

import SwiftUI

struct RootView: View {
    @State private var isStartScreenVisible = true
    
    var body: some View {
        ZStack {
            if isStartScreenVisible {
                StartScreenView()
                    .onAppear {
                        // Dismiss the StartScreen after 3 seconds
                        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                            withAnimation {
                                isStartScreenVisible = false
                            }
                        }
                    }
            } else {
                mainContent
            }
        }
    }
    
    private var mainContent: some View {
        VStack {
            Text("Welcome to Simple Budget")
                .font(.largeTitle)
                .padding()
            
            Text("Your main app content goes here")
                .font(.subheadline)
                .foregroundColor(.secondary)
        }
    }
}

#Preview {
    RootView()
}
