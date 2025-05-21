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
    
    // The list of arrivals for the current day (as an array)
    var arrivalStatuses: [ArrivalStatus]

    // MARK: Computed properties
    
    // The same list of arrivals, but provided as a dictionary
    //
    // NOTES:
    //  Keys are the houses
    //  Values tied to each key are the students in that house
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
