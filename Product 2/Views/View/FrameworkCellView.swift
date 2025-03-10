//
//  FrameworkCellView.swift
//  Product 2
//
//  Created by Раджаб Магомедов on 10.03.2025.
//

import SwiftUI

struct FrameworkCellView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack(alignment: .center){
            Image(framework.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 85, height: 85)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}


#Preview {
    FrameworkCellView(framework: MockData.sampleFramework)
}
