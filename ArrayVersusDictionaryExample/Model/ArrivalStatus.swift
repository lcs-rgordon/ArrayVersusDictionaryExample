//
//  ArrivalStatus.swift
//  ArrayVersusDictionaryExample
//
//  Created by Russell Gordon on 2025-05-21.
//

import Foundation

struct ArrivalStatus: Identifiable {
    
    let id: Int
    let arrivalId: Int?
    let house: String
    let lastName: String
    let firstName: String
    let ageCategory: String
    let emailOrganizer: String?
    let checkInMethod: CheckInMethod?
    let arrivalCategory: ArrivalCategory?
    let arrivalTime: Date?
    
    enum CodingKeys: String, CodingKey {
        
        case id
        case arrivalId = "arrival_id"
        case house
        case lastName = "last_name"
        case firstName = "first_name"
        case ageCategory = "age_category"
        case emailOrganizer = "email_organizer"
        case checkInMethod = "check_in_method_id"
        case arrivalCategory = "arrival_category_id"
        case arrivalTime = "arrival_time"
        
    }
    
}

// First example (of a single arrival)
let example1 = ArrivalStatus(
    id: 1,
    arrivalId: 101,
    house: "Colebrook",
    lastName: "Johnson",
    firstName: "Emma",
    ageCategory: "Senior",
    emailOrganizer: "johnson.e@school.edu",
    checkInMethod: .qrCode,
    arrivalCategory: .onTime,
    arrivalTime: Date().addingTimeInterval(-300) // 5 minutes ago
)


// Sample student arrival data across 3 houses
let sampleArrivals: [ArrivalStatus] = [
    // Colebrook House
    example1,
    ArrivalStatus(
        id: 2,
        arrivalId: 102,
        house: "Colebrook",
        lastName: "Brown",
        firstName: "Sophia",
        ageCategory: "Senior",
        emailOrganizer: "brown.s@school.edu",
        checkInMethod: .qrCode,
        arrivalCategory: .late,
        arrivalTime: Date().addingTimeInterval(-60) // 1 minute ago
    ),
    ArrivalStatus(
        id: 3,
        arrivalId: 103,
        house: "Colebrook",
        lastName: "Wilson",
        firstName: "Noah",
        ageCategory: "Junior",
        emailOrganizer: "wilson.n@school.edu",
        checkInMethod: .manualByEventMonitor,
        arrivalCategory: .onTime,
        arrivalTime: Date().addingTimeInterval(-330) // 5.5 minutes ago
    ),
    
    // Grove House
    ArrivalStatus(
        id: 4,
        arrivalId: 104,
        house: "Grove",
        lastName: "Smith",
        firstName: "Michael",
        ageCategory: "Junior",
        emailOrganizer: "smith.m@school.edu",
        checkInMethod: .manualByEventMonitor,
        arrivalCategory: .onTime,
        arrivalTime: Date().addingTimeInterval(-290) // 4.8 minutes ago
    ),
    ArrivalStatus(
        id: 5,
        arrivalId: 105,
        house: "Grove",
        lastName: "Garcia",
        firstName: "Isabella",
        ageCategory: "Sophomore",
        emailOrganizer: "garcia.i@school.edu",
        checkInMethod: .qrCode,
        arrivalCategory: .absent,
        arrivalTime: nil // Absent
    ),
    ArrivalStatus(
        id: 6,
        arrivalId: nil, // No arrival recorded yet
        house: "Grove",
        lastName: "Martinez",
        firstName: "Daniel",
        ageCategory: "Senior",
        emailOrganizer: "martinez.d@school.edu",
        checkInMethod: nil,
        arrivalCategory: nil,
        arrivalTime: nil // Not checked in yet
    ),
    ArrivalStatus(
        id: 7,
        arrivalId: 106,
        house: "Grove",
        lastName: "Taylor",
        firstName: "Olivia",
        ageCategory: "Sophomore",
        emailOrganizer: "taylor.o@school.edu",
        checkInMethod: .qrCode,
        arrivalCategory: .late,
        arrivalTime: Date().addingTimeInterval(-30) // 30 seconds ago
    ),
    
    // Ondaatje House
    ArrivalStatus(
        id: 8,
        arrivalId: 107,
        house: "Ondaatje",
        lastName: "Lee",
        firstName: "Ethan",
        ageCategory: "Junior",
        emailOrganizer: "lee.e@school.edu",
        checkInMethod: .qrCode,
        arrivalCategory: .onTime,
        arrivalTime: Date().addingTimeInterval(-280) // 4.7 minutes ago
    ),
    ArrivalStatus(
        id: 9,
        arrivalId: 108,
        house: "Ondaatje",
        lastName: "Harris",
        firstName: "Ava",
        ageCategory: "Senior",
        emailOrganizer: "harris.a@school.edu",
        checkInMethod: .manualByEventMonitor,
        arrivalCategory: .onTime,
        arrivalTime: Date().addingTimeInterval(-310) // 5.2 minutes ago
    ),
    ArrivalStatus(
        id: 10,
        arrivalId: 109,
        house: "Ondaatje",
        lastName: "Nguyen",
        firstName: "Liam",
        ageCategory: "Freshman",
        emailOrganizer: "nguyen.l@school.edu",
        checkInMethod: .qrCode,
        arrivalCategory: .late,
        arrivalTime: Date().addingTimeInterval(-45) // 45 seconds ago
    )
]

// When grouped by house, the data would transform into:
let groupedByHouse: [String: [ArrivalStatus]] = Dictionary(grouping: sampleArrivals) { currentStatus in
    currentStatus.house
}

/* This would result in a dictionary like:
[
    "Colebrook": [
        ArrivalStatus(id: 1, house: "Colebrook", lastName: "Johnson", firstName: "Emma", ...),
        ArrivalStatus(id: 2, house: "Colebrook", lastName: "Brown", firstName: "Sophia", ...),
        ArrivalStatus(id: 3, house: "Colebrook", lastName: "Wilson", firstName: "Noah", ...)
    ],
    "Grove": [
        ArrivalStatus(id: 4, house: "Grove", lastName: "Smith", firstName: "Michael", ...),
        ArrivalStatus(id: 5, house: "Grove", lastName: "Garcia", firstName: "Isabella", ...),
        ArrivalStatus(id: 6, house: "Grove", lastName: "Martinez", firstName: "Daniel", ...),
        ArrivalStatus(id: 7, house: "Grove", lastName: "Taylor", firstName: "Olivia", ...)
    ],
    "Ondaatje": [
        ArrivalStatus(id: 8, house: "Ondaatje", lastName: "Lee", firstName: "Ethan", ...),
        ArrivalStatus(id: 9, house: "Ondaatje", lastName: "Harris", firstName: "Ava", ...),
        ArrivalStatus(id: 10, house: "Ondaatje", lastName: "Nguyen", firstName: "Liam", ...)
    ]
]
*/
