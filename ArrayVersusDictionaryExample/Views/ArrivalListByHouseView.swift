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
        
        // Make a scrollable list
        List {
            
            // Get the keys of the dictionary (which is each house)
            let houses = dataProvider.arrivalStatusesByHouse.keys.sorted()
            
            // Iterate over the houses (keys)
            ForEach(houses, id: \.self) { currentHouse in
                
                // Make a section for each house
                Section(header: Text(currentHouse)) {
                    
                    // Access the values (students) connected to this key (the house)
                    let studentsInCurrentHouse = dataProvider.arrivalStatusesByHouse[currentHouse]!
                    
                    // Iterate over the students
                    ForEach(studentsInCurrentHouse) { status in
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
