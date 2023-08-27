//
//  CustomTextFieldStyle.swift
//  TechMarketplace
//
//  Created by Rajmani Kushwaha on 27/08/23.
//

import SwiftUI

struct CustomTextFieldStyle: TextFieldStyle {
    func _body(configuration: TextField<_Label>) -> some View {
        configuration
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16))
            .background(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.white, lineWidth: 1)
            )
            .foregroundColor(.white) // Text color
    }
}
