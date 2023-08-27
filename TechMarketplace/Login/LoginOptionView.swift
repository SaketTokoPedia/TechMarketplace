//
//  LoginView.swift
//  TechMarketplace
//
//  Created by Rajmani Kushwaha on 26/08/23.
//

import SwiftUI

struct LoginOptionView: View {
    
    @State var isSkipLogin = false
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

                Button {
                    print("pressed")
                } label: {
                    Text("Let's start")
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity)
                        .frame(minHeight: 48)
                        .background(Color.white)
                        .cornerRadius(8)
                }
                
                Button {
                    print("pressed")
                } label: {
                    Text("Connect with Google")
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity)
                        .frame(minHeight: 48)
                        .background(Color.white)
                        .cornerRadius(8)
                }
                
                Button {
                    print("pressed")
                } label: {
                    Text("Connect with facebook")
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity)
                        .frame(minHeight: 48)
                        .background(Color.white)
                        .cornerRadius(8)
                }

                Button("Already have an account ? Login") {
                    login = true
                }
                .padding(.top, 30)
               
                Spacer()

                
                Button("Skip for now") {
                    isSkipLogin = true
                }
                .fontWeight(.medium)
                .foregroundColor(.white)
                
                Spacer()
            }
            .padding()
            .frame(maxWidth: .infinity)
        }
        .fullScreenCover(isPresented: $isSkipLogin, content: {
            HomeView(isPresented: $isSkipLogin)
        })
        .fullScreenCover(isPresented: $login, content: {
            LoginView()
        })
        .navigationBarHidden(true)
    }
}

struct LoginOptionView_Previews: PreviewProvider {
    static var previews: some View {
        LoginOptionView()
    }
}
