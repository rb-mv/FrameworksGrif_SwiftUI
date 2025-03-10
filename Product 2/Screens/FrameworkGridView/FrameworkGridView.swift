//
//  FrameworkGridView.swift
//  Product 2
//
//  Created by Раджаб Магомедов on 07.03.2025.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: viewModel.column) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkCellView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("🍎 Framework")
            .background(LinearGradient(colors: [.indigo, .clear], startPoint: .topLeading, endPoint: .bottomTrailing))
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework,
                                    isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}


