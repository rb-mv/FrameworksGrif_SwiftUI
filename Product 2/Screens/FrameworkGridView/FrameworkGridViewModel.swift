//
//  FrameworkGridViewModel.swift
//  Product 2
//
//  Created by Раджаб Магомедов on 08.03.2025.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    let column: [GridItem] = [GridItem(.flexible()),
                              GridItem(.flexible()),
                              GridItem(.flexible())]

    
    @Published var isShowingDetailView = false
    
}
