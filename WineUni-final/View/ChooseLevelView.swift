//
//  ChooseLevel.swift
//  WineUni-final
//
//  Created by Kacper Bartlomiejczak on 24/08/2025.
//

import SwiftUI

struct ChooseLevel: View {
    @Environment(Router.self) var router
    var body: some View {
        VStack(spacing: -10){
            
            
            HStack {
                VStack(alignment: .leading, spacing: 40){
                    VStack(alignment: .leading){
                        BackBtn()
                            .environment(router)
                    }
                    ChooseLevelText()
                    
                    Spacer()
                    
                   
                }
                Spacer()
                
            }
            .padding()
            
            
            ChooseLevelBtn(path: .Test(level: .intermediate), imageName: "Test All")
                .environment(router)
                .environment(UserTestSettings())  
            ChooseLevelBtn(path: .Test(level: .intermediate), imageName: "Test-By-Category")
                .environment(router)
                .environment(UserTestSettings())
        }
    }
}

#Preview {
    ChooseLevel()
        .environment(Router())
}
