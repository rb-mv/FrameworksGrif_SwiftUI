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

    
    @Published var isShowingDetailView = false
    
}
