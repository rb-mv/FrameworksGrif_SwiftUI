//
//  FrameworkGridView.swift
//  Product 2
//
//  Created by Раджаб Магомедов on 07.03.2025.
//

import SwiftUI

struct FrameworkGridView: View {
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
                
                HStack {
                    
                    FrameworkCell(imageName: MockData.frameworks[0].imageName,
                                  name: MockData.frameworks[0].name)
                    FrameworkCell(imageName: MockData.frameworks[1].imageName,
                                  name: MockData.frameworks[1].name)
                    FrameworkCell(imageName: MockData.frameworks[2].imageName,
                                  name: MockData.frameworks[2].name)
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
    
    var imageName: String
    var name: String
    
    var body: some View {
        VStack(alignment: .center){
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .foregroundColor(Color.white)
        }
        .padding(10)
    }
}
