//
//  Task.swift
//  InfiniteWeekView
//
//  Created by Philipp Knoblauch on 13.05.23.
//

import Foundation

struct Task: Identifiable {
    let id: UUID = .init()
    let iconName: String
    let date: Date
    let description: String
    var isCompleted: Bool
}
