//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by Vitor Quadros on 08/10/25.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView: Bool = false
}
