//
//  XDismissButton.swift
//  Apple-Frameworks
//
//  Created by Vitor Quadros on 09/10/25.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
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
        .padding([.top, .horizontal])
    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
