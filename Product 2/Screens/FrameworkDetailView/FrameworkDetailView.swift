//
//  FrameworkDetailView.swift
//  Product 2
//
//  Created by Раджаб Магомедов on 08.03.2025.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    @Binding var isShowingDetailView: Bool
    @State var isShowingSafariView = false
    
    var body: some View {
        
        VStack {
            
            XDismissButton(isShowingDetailView: $isShowingDetailView)
            
            Spacer()
            
            FrameworkCellView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            }   label: {
                AFButton(title: "Подробнее")
            }
            .padding()
            .fullScreenCover(isPresented: $isShowingSafariView) {
                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
            }
        }
        .background(LinearGradient(colors: [.indigo, .clear, .black], startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}
#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
        .preferredColorScheme(.dark)
}
