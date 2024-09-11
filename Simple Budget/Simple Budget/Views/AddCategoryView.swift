//
//  AddCategoryView.swift
//  Simple Budget
//
//  Created by Christopher Pena on 9/11/24.
//

import SwiftUI

struct AddCategoryView: View {
    @State private var categoryName: String = ""
    @State private var percentage: String = ""
    @State private var selectedColor: Color = .blue
    
    let presetColors: [Color] = [.red, .blue, .green, .yellow, .purple, .orange]
    
    var body: some View {
        VStack(spacing: 20) {
            TextField("Category Name", text: $categoryName)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            TextField("Percentage", text: $percentage)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
                .keyboardType(.decimalPad)
            
            ColorPicker("Select Color", selection: $selectedColor)
                .padding(.horizontal)
            
            HStack {
                ForEach(presetColors, id: \.self) { color in
                    Button(action: {
                        selectedColor = color
                    }) {
                        Circle()
                            .fill(color)
                            .frame(width: 30, height: 30)
                            .overlay(
                                Circle()
                                    .stroke(Color.black, lineWidth: selectedColor == color ? 2 : 0)
                            )
                    }
                }
            }
            
            Button(action: {
                // Here you would handle saving the category
                print("Save category: \(categoryName), \(percentage)%, Color: \(selectedColor)")
            }) {
                Text("Save Category")
                    .foregroundColor(.white)
                    .frame(width: 200, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
        .padding()
        .background(Color(UIColor.systemBackground))
        .cornerRadius(15)
        .shadow(radius: 5)
    }
}

struct AddCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        AddCategoryView()
    }
}
