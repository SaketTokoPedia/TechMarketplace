//
//  HomeView.swift
//  TechMarketplace
//
//  Created by Rajmani Kushwaha on 26/08/23.
//

import SwiftUI

struct HomeView: View {
    
    @Binding var isPresented: Bool
    
    var body: some View {
        Button("logout") {
            isPresented = false
        }
    }
}

//struct HomeView_Previews: PreviewProvider {
//    @State var isPresented: Bool = true
//
//    static var previews: some View {
//        HomeView(isPresented: $isPresented)
//    }
//}
