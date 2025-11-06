//
//  DetailFrameworkViewModel.swift
//  Apple-Frameworks
//
//  Created by Vitor Quadros on 05/11/25.
//

import SwiftUI

final class FrameworkDetailViewModel: ObservableObject {
    let framework: Framework
    var isShowingDetailView: Binding<Bool>
    @Published var isShowingSafariView = false
    
    init(framework: Framework, isShowingDetailView: Binding<Bool>, isShowingSafariView: Bool = false) {
        self.framework = framework
        self.isShowingDetailView = isShowingDetailView
        self.isShowingSafariView = isShowingSafariView
    }
}
