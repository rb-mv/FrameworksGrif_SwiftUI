//
//  FrameworkGridView.swift
//  Product 2
//
//  Created by Раджаб Магомедов on 07.03.2025.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let column: [GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: column) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkCell(framework: framework)
                    }
                }
            }
            .navigationTitle("🍎 Framework")
            .background(Gradient(colors: [.black, .gray]))
        }
    }
}

#Preview {
    FrameworkGridView()
        .preferredColorScheme(.dark)
}


struct FrameworkCell: View {
    
    var framework: Framework
    
    var body: some View {
        VStack(alignment: .center){
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .foregroundColor(Color.white)
        }
        .padding()
    }
}
