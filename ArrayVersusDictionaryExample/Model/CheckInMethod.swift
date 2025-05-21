//
//  CheckInMethod.swift
//  ArrayVersusDictionaryExample
//
//  Created by Russell Gordon on 2025-05-21.
//

import Foundation

enum CheckInMethod: Int, Identifiable {
    
    // MARK: Cases
    case qrCode = 1
    case manualByEventMonitor = 2
    case notYetDetermined = 3
    
    
    // MARK: Computed properties
    var id: Int {
        return rawValue
    }

    var displayName: String {
        switch self {
        case .qrCode:
            return "Using QR code"
        case .manualByEventMonitor:
            return "Manual"
        case .notYetDetermined:
            return "TBD"
        }
    }
    
}
