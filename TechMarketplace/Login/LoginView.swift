//
//  LoginView.swift
//  TechMarketplace
//
//  Created by Rajmani Kushwaha on 26/08/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var redirectToHome = false
    @State var email = String()
    @State var password = String()

    var body: some View {
        ZStack {
            Color.background.edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {

                Text("Login")
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(.top)
                
                Spacer(minLength: 20)

                
                Text("Email")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                
                let placeholderColor = Color.white.opacity(0.8)
                
                TextField("",
                          text: $email,
                          prompt: Text("Email").foregroundColor(placeholderColor)
                )
                .textFieldStyle(CustomTextFieldStyle())
                .foregroundColor(.white)
                .frame(height: 40)
                
                Text("Password")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundColor(.white)
                    .fontWeight(.medium)
                
                SecureField("",
                          text: $password,
                          prompt: Text("Password").foregroundColor(placeholderColor)
                )
                .textFieldStyle(CustomTextFieldStyle())
                    .foregroundColor(.white)
                    .frame(height: 40)
                
                Button {
                    redirectToHome = true
                } label: {
                    Text("Validate")
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity)
                        .frame(minHeight: 48)
                        .background(Color.white)
                        .cornerRadius(8)
                }

                Button("Already have an account ? Sign-up") {

                }
                .padding(.top, 30)

                
                Button("Skip for now") {
                    redirectToHome = true
                }
                .fontWeight(.medium)
                .foregroundColor(.white)
                
                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity)
        }
        .fullScreenCover(isPresented: $redirectToHome, content: {
            HomeView(isPresented: $redirectToHome)
        })
        .navigationBarHidden(true)
    }
}

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

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


