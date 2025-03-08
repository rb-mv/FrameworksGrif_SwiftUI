//
//  AFButton.swift
//  Product 2
//
//  Created by Раджаб Магомедов on 08.03.2025.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
        Text(title)
            .font(.title2)
            .fontWeight(.semibold)
            .frame(width: 250, height: 50)
            .background(RadialGradient(colors: [.indigo, .black], center: .top, startRadius: 0, endRadius: 150))
            .cornerRadius(14)
            .foregroundColor(Color.white)
    }
}

#Preview {
    AFButton(title: "Test title")
}
