//
//  ContentView.swift
//  WineUni-final
//
//  Created by Kacper Bartlomiejczak on 23/08/2025.
//

import SwiftUI

struct ContentView: View {
    @Environment(UserTestSettings.self) var userSettings
    var body: some View {
        VStack {
            WelcomeScreen()
            Spacer()
            
            
            VStack(spacing: 30) {
                Text("Choose your level")
                    .font(.system(size: 25, weight:.light, design: .default))
                
                Button(action:{
                    userSettings.userLevel = .novice
                  
                },label: {
                    TextButton(text: "Novice", bgColor: .blue)
                    
                })
                
                
                Button(action:{
                    userSettings.userLevel = .intermediate
               
                },label: {
                    TextButton(text: "Intermidiate", bgColor: Color(.green))
                })
                Button(action:{
                    userSettings.userLevel = .expert
                    print(userSettings.userLevel)
                },label: {
                    TextButton(text:"Expert", bgColor: Color(.pink))
                    
                })
                
            }
            .padding(.bottom, 70)
        }
        
    }
}

#Preview {
    ContentView()
        .environment(UserTestSettings())
}
