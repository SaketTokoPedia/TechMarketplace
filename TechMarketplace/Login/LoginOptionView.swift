//
//  LoginView.swift
//  TechMarketplace
//
//  Created by Rajmani Kushwaha on 26/08/23.
//

import SwiftUI

struct LoginOptionView: View {
    
    @State var isSkipLogin = false
    @State var redirectToSignup = false
    @State var login = false

    var body: some View {
        ZStack {
            Color.background.edgesIgnoringSafeArea(.all)
            VStack(spacing: 20) {
                Spacer(minLength: 8)

                Text("Tech Marketplace")
                    .fontWeight(.bold)
                    .font(.title)
                    .foregroundColor(.white)
                
                Spacer(minLength: 8)

                VStack(alignment: .leading, spacing: 20) {
                    Button("Create an account") {
                        redirectToSignup = true
                    }
                    .frame(maxWidth: .infinity)
                    .frame(minHeight: 48)
                    .background(.white)
                    .foregroundColor(.blue)
                    .cornerRadius(8)

                    HStack {
                        Image("search")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(.leading, 20)
                        Button("Connect with Google") {
                            print("Google")
                        }
                        .frame(maxWidth: .infinity, alignment: .center)
                    }
                    .padding()
                    .frame(minHeight: 48)
                    .background(.white)
                    .foregroundColor(.black.opacity(0.8))
                    .cornerRadius(8)

                    HStack {
                        Image("facebook")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .padding(.leading, 20)
                        Button("Connect with Facebook") {
                            print("facebook")
                        }
                        .frame(maxWidth: .infinity, alignment: .center)
                    }
                    .padding()
                    .frame(minHeight: 48)
                    .frame(alignment: .leading)
                    .background(Color.facebook)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
                .bold()

                Button("Already have an account ? Login") {
                    login = true
                }
                .padding(.top)
                .fontWeight(.regular)
               
                Spacer()
                
                Button("Skip for now") {
                    isSkipLogin = true
                }
                
                Spacer()
            }
            .padding()
            .bold()
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            
        }
        .fullScreenCover(isPresented: $isSkipLogin, content: {
            HomeView(isPresented: $isSkipLogin)
        })
        .fullScreenCover(isPresented: $login, content: {
            LoginView()
        })
        .fullScreenCover(isPresented: $redirectToSignup, content: {
            SignupView()
        })
        .navigationBarHidden(true)
    }
}

struct LoginOptionView_Previews: PreviewProvider {
    static var previews: some View {
        LoginOptionView()
    }
}
