//
//  ArrivalRow.swift
//  ArrayVersusDictionaryExample
//
//  Created by Russell Gordon on 2025-05-21.
//

import SwiftUI

// Shared row view for both list types
struct ArrivalRow: View {
    let status: ArrivalStatus
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("\(status.firstName) \(status.lastName)")
                    .font(.headline)
                Text(status.ageCategory)
                    .font(.subheadline)
                    .foregroundColor(.gray)
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
        ArrivalRow(status: example1)
    }
}
