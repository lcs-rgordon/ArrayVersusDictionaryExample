//
//  ArrivalsDataProvider.swift
//  ArrayVersusDictionaryExample
//
//  Created by Russell Gordon on 2025-05-21.
//

import SwiftUI

@Observable @MainActor
class ArrivalsDataProvider {
    
    // MARK: Stored properties
    
    // The list of arrivals for the current day
    var arrivalStatuses: [ArrivalStatus]

    // MARK: Computed properties
    var arrivalStatusesByHouse: [String: [ArrivalStatus]] {
        
        return Dictionary(grouping: arrivalStatuses) { currentStatus in
            
            currentStatus.house
            
        }
        
    }
    
    // MARK: Initializer(s)
    init() {
        
        // Populate the arrivals status array with example data for the purposes of this tutorial
        self.arrivalStatuses = sampleArrivals
            
    }
    
        
}
