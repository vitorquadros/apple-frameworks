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
    
    @State private var isShowingSafariView: Bool = false
    
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
                    isShowingSafariView = true
                } label: {
                    AFButton("Learn More")
                }
            }
            .sheet(isPresented: $isShowingSafariView) {
                if let url = URL(string: framework.urlString) {
                    SafariView(url: url)
                } else {
                    SafariView(url: URL(string: "https://developer.apple.com")!)
                }
            }
        }
    }
}

#Preview {
    DetailFrameworkView(framework: MockData.frameworks[0],
                        isShowingDetailView: .constant(false))
}
