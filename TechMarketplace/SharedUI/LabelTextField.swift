//
//  LabelTextField.swift
//  TechMarketplace
//
//  Created by Rajmani Kushwaha on 27/08/23.
//

import SwiftUI

struct LabelTextField: View {
    @Binding var inputText: String
    let labelText: String
    var isSecureField = false

    var body: some View {
        VStack {
            Text(labelText)
                .frame(maxWidth: .infinity, alignment: .leading)

            let placeholderText = Text(labelText).foregroundColor(.placeholder)

            if isSecureField {
                SecureField("",
                            text: $inputText,
                            prompt: placeholderText
                )
                .textFieldStyle(CustomTextFieldStyle())
                .frame(height: 40)
            } else {
                TextField("",
                          text: $inputText,
                          prompt: placeholderText
                )
                .textFieldStyle(CustomTextFieldStyle())
                .frame(height: 40)
            }
        }
        .foregroundColor(.white)
    }
}

