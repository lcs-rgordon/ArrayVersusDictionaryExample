//
//  ArrivalListView.swift
//  ArrayVersusDictionaryExample
//
//  Created by Russell Gordon on 2025-05-21.
//

import SwiftUI

// 1. Simple array-based view (flat listing of all students)
struct ArrivalListView: View {
    
    // MARK: Stored properties
    let dataProvider: ArrivalsDataProvider
    
    // MARK: Computed properties
    var body: some View {
        List {
            ForEach(dataProvider.arrivalStatuses) { status in
                ArrivalRow(
                    status: status,
                    showingHouse: true
                )
            }
        }
    }
}

#Preview {
    ArrivalListByHouseView(dataProvider: ArrivalsDataProvider())
}
