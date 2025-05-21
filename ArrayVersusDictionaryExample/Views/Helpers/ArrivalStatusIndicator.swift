//
//  ArrivalStatusIndicator.swift
//  ArrayVersusDictionaryExample
//
//  Created by Russell Gordon on 2025-05-21.
//

import SwiftUI

// Status indicator component
struct ArrivalStatusIndicator: View {
    
    // MARK: Stored properties
    let status: ArrivalStatus
    
    // MARK: Computed properties
    var body: some View {
        VStack(alignment: .trailing) {
            HStack {
                Text(status.arrivalCategory?.displayName ?? "Unknown")
                Circle()
                    .fill(status.arrivalCategory?.displayColor ?? Color.secondary)
                    .frame(width: 10, height: 10)
            }

            if let arrivalTime = status.arrivalTime {
                Text(arrivalTime.formatted(date: .long, time: .shortened))
                    .font(.caption)
            }
            
        }
    }
    
}

#Preview {
    ArrivalStatusIndicator(status: example1)
}
