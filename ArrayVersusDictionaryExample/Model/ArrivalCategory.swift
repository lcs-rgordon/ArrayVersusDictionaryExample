//
//  ArrivalCategory.swift
//  ArrayVersusDictionaryExample
//
//  Created by Russell Gordon on 2025-05-21.
//

import SwiftUI

enum ArrivalCategory: Int, Identifiable {
    
    case notYetDetermined = 1
    case onTime = 2
    case absent = 3
    case late = 4
    
    var id: Int { rawValue }

    var displayName: String {
        switch self {
        case .notYetDetermined:
            return "TBD"
        case .onTime:
            return "On time"
        case .late:
            return "Late"
        case .absent:
            return "Absent"
        }
    }

    var displayColor: Color {
        switch self {
        case .notYetDetermined:
            return .primary
        case .onTime:
            return .green
        case .late:
            return .orange
        case .absent:
            return .red
        }
    }
}

