//
//  DetailFrameworkView.swift
//  Apple-Frameworks
//
//  Created by Vitor Quadros on 08/10/25.
//

import SwiftUI

struct DetailFrameworkView: View {
    let framework: Framework
    
    init(_ framework: Framework) {
        self.framework = framework
    }
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                FrameworkTitleView(framework)
                
                Text(framework.description)
                    .font(.body)
                    .padding()
                
                Spacer()
                
                Button {
                    
                } label: {
                    AFButton("Learn More")
                }
            }
        }
    }
}

#Preview {
    DetailFrameworkView(MockData.frameworks[0])
}
