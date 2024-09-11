//
//  AddCategoryButton.swift
//  Simple Budget
//
//  Created by Christopher Pena on 9/3/24.
//

import SwiftUI

struct AddCategoryButton: View {
    var body: some View {
        Button(action: {
            // Action to perform when the button is tapped
            print("Add category button tapped")
        }) {
            Image(systemName: "plus")
                .font(.system(size: 30, weight: .bold))
                .frame(width: 200, height: 60)
                .foregroundColor(.white)
                .background(Color.blue)
                .clipShape(Rectangle())
                .cornerRadius(6)
        }
    }
}

#Preview {
    AddCategoryButton()
}
