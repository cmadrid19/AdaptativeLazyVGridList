//
//  LayoutType.swift
//  AdaptiveVGridList
//
//  Created by Maxim Macari on 20/10/2020.
//

import Foundation
import SwiftUI

enum LayoutType: CaseIterable {
    
    case single
    case double
    case adaptive
    
    var columns: [GridItem] {
        
        switch self {
        case .single:
            return [GridItem(.flexible(), spacing: 0)]
        case .double:
            return [
                GridItem(.flexible(), spacing: 1),
                GridItem(.flexible(), spacing: 1)
            ]
            
        case .adaptive:
            return [GridItem(.adaptive(minimum: 100), spacing: 1)]
        }
    }
}
