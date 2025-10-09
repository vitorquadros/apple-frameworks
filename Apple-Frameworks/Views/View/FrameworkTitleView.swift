//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Vitor Quadros on 09/10/25.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework
    
    init(_ framework: Framework) {
        self.framework = framework
    }
    
    var body: some View {
        VStack(spacing: 6) {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
        }
    }
}

#Preview {
    FrameworkTitleView(MockData.frameworks[0])
}
