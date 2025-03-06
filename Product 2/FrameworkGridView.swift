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
        ZStack {
            LinearGradient(colors: [.gray, .black],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
            .ignoresSafeArea(.all)
            VStack {
                HStack(alignment: .bottom){
                    Image("apple")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                    Text("Frameworks")
                        .foregroundColor(Color.white)
                        .font(.system(size: 30, weight: .heavy))
                }
                .padding(.top, 40)
                .padding(.trailing, 100)
                
                Spacer()
                
                LazyVGrid(columns: column) {
                    
                    ForEach(MockData.frameworks) { framework in
                        FrameworkCell(framework: framework)
                    }
                    
                }
                
                Spacer()
            }
        }
    }
}

#Preview {
    FrameworkGridView()
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
        .padding(10)
    }
}
