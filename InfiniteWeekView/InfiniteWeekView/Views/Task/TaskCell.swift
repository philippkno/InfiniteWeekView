//
//  TaskCell.swift
//  InfiniteWeekView
//
//  Created by Philipp Knoblauch on 13.05.23.
//

import SwiftUI

struct TaskCell: View {
    @StateObject var taskVM: TaskViewModel

    var body: some View {
            HStack {
                Text(taskVM.task.date.toString(format: "hh:mm"))
                    .font(.system(size: 10, design: .monospaced))
                ZStack {
                    Circle()
                        .foregroundColor(Color.element)
                        .frame(width: 45)
                    Image(systemName: taskVM.task.iconName)
                        .font(.system(size: 23))
                        .foregroundColor(.primary)
                }
                Spacer()
                    .frame(width: 10)
                Text(taskVM.task.description)
                    .strikethrough(taskVM.task.isCompleted)
                    .font(.system(size: 16))
                Spacer()
                Image(systemName: taskVM.task.isCompleted ? "checkmark.circle.fill" : "circle")
                    .font(.system(size: 20))
                    .foregroundColor(taskVM.task.isCompleted ? .green : .primary)
            }
            .background(.clear)
            .onTapGesture {
                withAnimation {
                    taskVM.task.isCompleted.toggle()
                }
            }
    }
}

struct TaskCell_Previews: PreviewProvider {
    static var previews: some View {
        TaskCell(taskVM: .init(task: .init(iconName: "flag.checkered", date: Date(), description: "Do something!", isCompleted: false)))
    }
}
