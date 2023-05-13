//
//  MockTasks.swift
//  InfiniteWeekView
//
//  Created by Philipp Knoblauch on 13.05.23.
//

import Foundation

struct MockTasks {
    func all() -> [Task] {
        [task1, task2, task3, task4, task5, task6, task7, task8, task9, task10, task11, task12, task13, task14, task15, task16, task17]
    }

    var task1: Task = .init(iconName: "alarm",
                            date: Date().addingTimeInterval(-1089),
                            description: "Wake up!",
                            isCompleted: true)

    var task2: Task = .init(iconName: "laptopcomputer",
                            date: Date().addingTimeInterval(-189),
                            description: "Do work!",
                            isCompleted: false)

    var task3: Task = .init(iconName: "figure.run",
                            date: Date().addingTimeInterval(189),
                            description: "Do sport!",
                            isCompleted: false)

    var task4: Task = .init(iconName: "moon.zzz",
                            date: Date().addingTimeInterval(1289),
                            description: "Sleep well!",
                            isCompleted: false)

    var task5: Task = .init(iconName: "alarm",
                            date: Calendar.current.date(byAdding: .day, value: 1, to: Date())!.addingTimeInterval(-1089),
                            description: "Wake up!",
                            isCompleted: false)

    var task6: Task = .init(iconName: "web.camera.fill",
                            date: Calendar.current.date(byAdding: .day, value: 1, to: Date())!.addingTimeInterval(-189),
                            description: "Attend meeting!",
                            isCompleted: false)

    var task7: Task = .init(iconName: "bathtub.fill",
                            date: Calendar.current.date(byAdding: .day, value: 1, to: Date())!,
                            description: "Take a bath!",
                            isCompleted: false)

    var task8: Task = .init(iconName: "flag.checkered",
                            date: Calendar.current.date(byAdding: .day, value: 2, to: Date())!,
                            description: "Do something!",
                            isCompleted: false)

    var task9: Task = .init(iconName: "flag.checkered",
                            date: Calendar.current.date(byAdding: .day, value: 2, to: Date())!,
                            description: "Do something!",
                            isCompleted: false)

    var task10: Task = .init(iconName: "flag.checkered",
                             date: Calendar.current.date(byAdding: .day, value: 3, to: Date())!,
                             description: "Do something!",
                             isCompleted: false)

    var task11: Task = .init(iconName: "flag.checkered",
                             date: Calendar.current.date(byAdding: .day, value: 4, to: Date())!,
                             description: "Do something!",
                             isCompleted: false)

    var task12: Task = .init(iconName: "flag.checkered",
                             date: Calendar.current.date(byAdding: .day, value: 5, to: Date())!,
                             description: "Do something!",
                             isCompleted: false)

    var task13: Task = .init(iconName: "flag.checkered",
                             date: Calendar.current.date(byAdding: .day, value: 6, to: Date())!,
                             description: "Do something!",
                             isCompleted: false)

    var task14: Task = .init(iconName: "flag.checkered",
                             date: Calendar.current.date(byAdding: .day, value: 7, to: Date())!,
                             description: "Do something!",
                             isCompleted: false)

    var task15: Task = .init(iconName: "flag.checkered",
                             date: Calendar.current.date(byAdding: .day, value: 8, to: Date())!,
                             description: "Do something!",
                             isCompleted: false)

    var task16: Task = .init(iconName: "flag.checkered",
                             date: Calendar.current.date(byAdding: .day, value: 9, to: Date())!,
                             description: "Do something!",
                             isCompleted: false)

    var task17: Task = .init(iconName: "flag.checkered",
                             date: Calendar.current.date(byAdding: .day, value: 10, to: Date())!,
                             description: "Do something!",
                             isCompleted: false)
}
