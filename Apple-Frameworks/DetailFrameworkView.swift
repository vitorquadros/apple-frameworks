//
//  DetailFrameworkView.swift
//  Apple-Frameworks
//
//  Created by Vitor Quadros on 08/10/25.
//

import SwiftUI

struct DetailFrameworkView: View {
    let framework: Framework
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Spacer()
                    
                    Button {
                        isShowingDetailView = false
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(Color(.label))
                            .imageScale(.large)
                            .frame(width: 44, height: 44)
                    }

                }
                .padding(.horizontal)
                
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
    DetailFrameworkView(framework: MockData.frameworks[0],
                        isShowingDetailView: .constant(false))
}
