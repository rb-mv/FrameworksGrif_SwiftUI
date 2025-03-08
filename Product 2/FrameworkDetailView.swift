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
    
    var body: some View {
        
        HStack {
            Spacer()
            
            Button {
                isShowingDetailView = false
            }   label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
            .padding()
        }
        
        Spacer()
        
        FrameworkCell(framework: framework)
        Text(framework.description)
            .font(.body)
            .padding()
        
        Spacer()
        
        Button {
            
        }   label: {
            AFButton(title: "Learn More")
        }
        .padding()
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework, isShowingDetailView: .constant(false))
        .preferredColorScheme(.dark)
}
