//
//  TotalViewAmount.swift
//  Simple Budget
//
//  Created by Christopher Pena on 8/17/24.
//

import SwiftUI

struct TotalViewAmount: View {
    
    @State var infoText: String = "Please enter amount to budget below"
    @State var budgetInput: String = ""
    
    var body: some View {
        VStack {
            Text(infoText)
                .foregroundColor(Color.gray)
                .padding(.top, 50)
            
            TextField("", text: $budgetInput, prompt: Text("Enter Amount").foregroundColor(.white))
                .padding()
                .frame(width: 300, height: 100) // Increased height
                .background(Color.black)
                .foregroundColor(.white)
                .cornerRadius(6)
                .multilineTextAlignment(.center)
                .font(.system(size: 30, weight: .bold)) // Larger font
                .keyboardType(.decimalPad)
            Spacer() // This will push the content to the top
        }
    }
}

#Preview {
    TotalViewAmount()
}
