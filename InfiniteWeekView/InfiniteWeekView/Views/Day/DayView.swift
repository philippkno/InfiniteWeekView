//
//  DayView.swift
//  InfiniteWeekView
//
//  Created by Philipp Knoblauch on 13.05.23.
//

import SwiftUI

struct DayView: View {
    let day: Date
    var tasks: [Task]

    var body: some View {
        VStack {
            TaskList(day: day, tasks: tasks)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .background(Color.section)
    }
}

struct DayView_Previews: PreviewProvider {
    static var previews: some View {
        DayView(day: Date(), tasks: [
            .init(iconName: "person",
                  date: Date(),
                  description: "Tadaaa 🎉",
                  isCompleted: false)
        ])
    }
}
