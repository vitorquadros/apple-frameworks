//
//  DetailFrameworkView.swift
//  Apple-Frameworks
//
//  Created by Vitor Quadros on 08/10/25.
//

import SwiftUI

struct DetailFrameworkView: View {
    @ObservedObject var vm: FrameworkDetailViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                FrameworkTitleView(vm.framework)
                
                Text(vm.framework.description)
                    .font(.body)
                    .padding()
                
                Spacer()
                
                Button {
                    vm.isShowingSafariView = true
                } label: {
                    AFButton("Learn More")
                }
            }
            .sheet(isPresented: $vm.isShowingSafariView) {
                if let url = URL(string: vm.framework.urlString) {
                    SafariView(url: url)
                } else {
                    SafariView(url: URL(string: "https://developer.apple.com")!)
                }
            }
        }
    }
}

#Preview {
    DetailFrameworkView(vm: FrameworkDetailViewModel(framework: MockData.sampleFramework, isShowingDetailView: .constant(false)))
}
