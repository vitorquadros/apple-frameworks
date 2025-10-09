//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by Vitor Quadros on 08/10/25.
//

import SwiftUI

struct AFButton: View {
    let title: String
    
    init(_ title: String) {
        self.title = title
    }
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 200, height: 50)
            .background(.red)
            .foregroundStyle(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AFButton("Learn More")
}
