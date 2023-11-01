//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by İsmail Kocaoglu on 26.10.2023.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework : Framework? {
        didSet{
            isShowingDetailView = true}
    }
    @Published var isShowingDetailView = false

    
    let colomns : [GridItem] = [GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())]
    
    
}
