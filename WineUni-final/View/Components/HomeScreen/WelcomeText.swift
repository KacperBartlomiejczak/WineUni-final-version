//
//  WelcomeScreen.swift
//  WineUni-final
//
//  Created by Kacper Bartlomiejczak on 23/08/2025.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        HStack(spacing: 70){
            Image("Logo-Oval")
            VStack(alignment: .leading){
                Text("Welcome")
                    .font(.system(size: 25, weight: .bold, design: .default))
                HStack{
                    Text("to")
                    Text("WineUni")
                        .foregroundStyle(Color("redWine"))
                }
            }.font(.system(size: 20, weight: .bold, design: .default))
            
                
        }
    }
}

#Preview {
    WelcomeScreen()
}
