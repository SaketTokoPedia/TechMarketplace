//
//  OnboardingView.swift
//  TechMarketplace
//
//  Created by Rajmani Kushwaha on 26/08/23.
//

import SwiftUI

struct OnboardingView: View {

    @State var redirectToLogin = false
    @State var redirectToHome = false

    var body: some View {
        NavigationView {
            ZStack {
                Color.background.edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    Text("TECH")
                        .font(.custom("Roboto-Bold", size: 44))
                        .foregroundColor(.white)
                   
                    Text("MARKETPLACE")
                        .fontWeight(.medium)
                        .foregroundColor(.white)
                    
                    Image("Logo")
                        .resizable()
                        .frame(width: 220, height: 220, alignment: .center)
                    
                    Spacer()

                    NavigationLink(destination: LoginOptionView()) {
                        Text("Let's start")
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                            .frame(maxWidth: .infinity)
                            .frame(minHeight: 48)
                            .background(Color.white)
                    }
                    .cornerRadius(8)
                    .padding(20)
                    
                    Spacer()

                    Button("Skip for now") {
                        redirectToHome = true
                    }
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity)
            }
        }
        .fullScreenCover(isPresented: $redirectToHome) {
            HomeView(isPresented: $redirectToHome)
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
