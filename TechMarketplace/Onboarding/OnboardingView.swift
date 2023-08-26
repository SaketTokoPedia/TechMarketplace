//
//  OnboardingView.swift
//  TechMarketplace
//
//  Created by Rajmani Kushwaha on 26/08/23.
//

import SwiftUI

struct OnboardingView: View {
    let customBlue = Color(UIColor(hex: "#0001FC")!)

    var body: some View {
        NavigationView {
            ZStack {
                customBlue.edgesIgnoringSafeArea(.all)
                
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

                    NavigationLink(destination: LoginView()) {
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

                    NavigationLink(destination: HomeView()) {
                        Text("Skip for now")
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

extension UIColor {
    convenience init?(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        
        var rgb: UInt64 = 0
        
        Scanner(string: hexSanitized).scanHexInt64(&rgb)
        
        let red = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat(rgb & 0x0000FF) / 255.0
        
        self.init(red: red, green: green, blue: blue, alpha: 1.0)
    }
}
