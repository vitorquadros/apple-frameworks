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
        NavigationStack {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(
                        destination: DetailFrameworkView(
                            vm: FrameworkDetailViewModel(
                                framework: framework,
                                isShowingDetailView: $vm.isShowingDetailView
                            )
                        )
                    ) {
                        FrameworkTitleView(framework)
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkGridView()
}
