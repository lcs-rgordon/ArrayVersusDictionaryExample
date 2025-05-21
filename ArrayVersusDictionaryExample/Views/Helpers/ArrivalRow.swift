//
//  ArrivalRow.swift
//  ArrayVersusDictionaryExample
//
//  Created by Russell Gordon on 2025-05-21.
//

import SwiftUI

// Shared row view for both list types
struct ArrivalRow: View {
    
    // MARK: Stored properties
    let status: ArrivalStatus
    let showingHouse: Bool
    
    // MARK: Computed properties
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading) {
                Text("\(status.firstName) \(status.lastName)")
                    .font(.headline)
                Text(status.house)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .opacity(showingHouse ? 1.0 : 0.0)
            }
            
            Spacer()
            
            // Display arrival status indicator
            ArrivalStatusIndicator(status: status)
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    List {
        ArrivalRow(
            status: example1,
            showingHouse: true
        )
    }
}

#Preview {
    List {
        ArrivalRow(
            status: example1,
            showingHouse: false
        )
    }
}
