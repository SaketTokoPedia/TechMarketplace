//
//  HomeView.swift
//  TechMarketplace
//
//  Created by Rajmani Kushwaha on 26/08/23.
//

import SwiftUI

// Creating HomeView
struct HomeView: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        Button("logout") {
            isPresented = false
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        let binding = Binding<Bool>(
            get: { false },
            set: { _ in }
        )
        HomeView(isPresented: binding)
    }
}
