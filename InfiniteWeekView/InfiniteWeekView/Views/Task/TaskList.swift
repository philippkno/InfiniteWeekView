//
//  TaskList.swift
//  InfiniteWeekView
//
//  Created by Philipp Knoblauch on 13.05.23.
//

import SwiftUI

struct TaskList: View {
    let day: Date
    var tasks: [Task]

    var body: some View {
        ZStack {
            if tasks.isEmpty {
                Text("No tasks today")
                    .font(.system(size: 18))
            } else {
                VStack {
                    List {
                        ForEach(tasks) { task in
                            TaskCell(taskVM: .init(task: task))
                                .listRowBackground(Color.clear)
                                .listRowSeparator(.hidden)
                        }
                    }
                    .listStyle(.plain)
                    .onAppear() {
                        UITableView.appearance().backgroundColor = UIColor.clear
                        UITableViewCell.appearance().backgroundColor = UIColor.clear
                    }
                }
                .ignoresSafeArea()
            }
        }
    }
}

struct TaskList_Previews: PreviewProvider {
    static var previews: some View {
        TaskList(day: Date(), tasks: [])
    }
}
