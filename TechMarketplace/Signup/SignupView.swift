//
//  SignupView.swift
//  TechMarketplace
//
//  Created by Rajmani Kushwaha on 27/08/23.
//

import SwiftUI

struct SignupView: View {
    
    @State var redirectToHome = false
    @State var redirectToLogin = false
    @State var fullName = String()
    @State var email = String()
    @State var password = String()

    var body: some View {
        ZStack {
            Color.background.edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {

                Text("Create an account")
                    .font(.title)
                    .padding(.top)

                Spacer()

                SignupInputView(fullName: $fullName,
                                email: $email,
                                password: $password)
                
                Button("Validate") {
                    redirectToHome = true
                }
                .fontWeight(.bold)
                .foregroundColor(.blue)
                .frame(maxWidth: .infinity)
                .frame(minHeight: 48)
                .background(Color.white)
                .cornerRadius(8)
                
                Button("Already have an account ? Login") {
                    redirectToLogin = true
                }
                .foregroundColor(.placeholder)
                .padding(.top)
                .fontWeight(.regular)
                
                Spacer()

                Button("Skip for now") {
                    redirectToHome = true
                }
                .fontWeight(.medium)
                
                Spacer()
            }
            .bold()
            .foregroundColor(.white)
            .padding()
            .frame(maxWidth: .infinity)
        }
        .fullScreenCover(isPresented: $redirectToHome, content: {
            HomeView(isPresented: $redirectToHome)
        })
        .fullScreenCover(isPresented: $redirectToLogin, content: {
            LoginView()
        })
    }
}

struct SignupInputView: View {
    @Binding var fullName: String
    @Binding var email: String
    @Binding var password: String
    
    var body: some View {
        VStack(spacing: 20) {
            LabelTextField(inputText: $fullName, labelText: "Full name")
            LabelTextField(inputText: $email, labelText: "Email")
            LabelTextField(inputText: $password, labelText: "Password", isSecureField: true)
        }
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
    }
}
