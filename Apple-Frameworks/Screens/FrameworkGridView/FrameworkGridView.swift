//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Vitor Quadros on 07/10/25.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var vm = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: vm.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework)
                            .onTapGesture {
                                vm.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
            .sheet(isPresented: $vm.isShowingDetailView) {
                if let selectedFramework = vm.selectedFramework {
                    DetailFrameworkView(framework: selectedFramework,
                                        isShowingDetailView: $vm.isShowingDetailView)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    FrameworkGridView()
}
