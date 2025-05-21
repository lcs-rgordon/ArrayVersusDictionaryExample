//
//  ArrivalListByHouseView.swift
//  ArrayVersusDictionaryExample
//
//  Created by Russell Gordon on 2025-05-21.
//

import SwiftUI

// 2. Dictionary-based view (grouped by house)
struct ArrivalListByHouseView: View {

    // MARK: Stored properties
    let dataProvider: ArrivalsDataProvider

    // MARK: Computed properties
    var body: some View {
        List {
            ForEach(Array(dataProvider.arrivalStatusesByHouse.keys.sorted()), id: \.self) { house in
                Section(header: Text(house)) {
                    ForEach(dataProvider.arrivalStatusesByHouse[house] ?? []) { status in
                        ArrivalRow(
                            status: status,
                            showingHouse: false
                        )
                    }
                }
            }
        }
    }
}

#Preview {
    ArrivalListByHouseView(dataProvider: ArrivalsDataProvider())
}
