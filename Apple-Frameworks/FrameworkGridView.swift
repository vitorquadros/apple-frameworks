//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Vitor Quadros on 07/10/25.
//

import SwiftUI

struct FrameworkGridView: View {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(destination: DetailFrameworkView(framework)) {
                            FrameworkTitleView(framework)
                        }
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
        }
    }
}

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
    FrameworkGridView()
}
