//
//  OnboardingView.swift
//  TechMarketplace
//
//  Created by Rajmani Kushwaha on 26/08/23.
//

import SwiftUI

struct OnboardingView: View {
    
    @State var redirectToLoginOption = false
    @State var redirectToHome = false
    
    var body: some View {
        ZStack {
            Color.background.edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                Text("TECH")
                    .font(.custom("Roboto-Bold", size: 44))
                
                Text("MARKETPLACE")
                    .fontWeight(.medium)
                
                Image("Logo")
                    .resizable()
                    .frame(width: 220, height: 220)
                
                Spacer()
                
                Button("Let's start") {
                    redirectToLoginOption = true
                }
                .foregroundColor(.blue)
                .frame(maxWidth: .infinity)
                .frame(minHeight: 48)
                .background(.white)
                .cornerRadius(8)
                .padding()
                
                Spacer()
                
                Button("Skip for now") {
                    redirectToHome = true
                }
                
                Spacer()
            }
            .frame(maxWidth: .infinity)
        }
        .bold()
        .foregroundColor(.white)
        .fullScreenCover(isPresented: $redirectToHome) {
            HomeView(isPresented: $redirectToHome)
                .fullScreenCover(isPresented: $redirectToLoginOption) {
                    LoginOptionView()
                }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
