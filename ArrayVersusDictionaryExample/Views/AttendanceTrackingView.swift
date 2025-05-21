//
//  AttendanceTrackingView.swift
//  ArrayVersusDictionaryExample
//
//  Created by Russell Gordon on 2025-05-21.
//

import SwiftUI

// Main container view for switching between display modes
struct AttendanceTrackingView: View {
    
    // MARK: Stored properties
    
    // Provides example data for this project
    @State private var dataProvider = ArrivalsDataProvider()
    
    // Toggle whether to show grouped or ungrouped data
    @State private var showGroupedView = false
    
    // MARK: Computed properties
    var body: some View {
        NavigationView {
            VStack {
                if showGroupedView {
                    ArrivalListByHouseView(dataProvider: dataProvider)
                } else {
                    ArrivalListView(dataProvider: dataProvider)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        withAnimation {
                            showGroupedView.toggle()
                        }
                    }) {
                        HStack {
                            Text(showGroupedView ? "Show Ungrouped" : "Show Grouped")
                            Image(systemName: showGroupedView ? "list.bullet" : "square.grid.2x2")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    AttendanceTrackingView()
}
