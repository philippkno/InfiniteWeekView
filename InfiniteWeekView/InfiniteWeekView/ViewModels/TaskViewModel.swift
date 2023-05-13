//
//  TaskViewModel.swift
//  InfiniteWeekView
//
//  Created by Philipp Knoblauch on 13.05.23.
//

import Foundation

class TaskViewModel: ObservableObject {
    @Published var task: Task

    init(task: Task) {
        self.task = task
    }
}
