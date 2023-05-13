//
//  InfiniteWeekView.swift
//  InfiniteWeekView
//
//  Created by Philipp Knoblauch on 13.05.23.
//

import SwiftUI

struct InfiniteWeekView: View {
    @EnvironmentObject var weekStore: WeekStore

    @State var tasks: [Task] = MockTasks().all()

    var body: some View {
        GeometryReader { geometry in
            NavigationStack {
                ZStack {
                    VStack {
                        WeekHeaderView()
                        WeeksTabView() { week in
                            WeekView(week: week)
                        }
                        .frame(height: 80, alignment: .top)
                        Text(weekStore.selectedDate.toString(format: "EEEE, dd.MM.yyyy"))
                            .font(.system(size: 10, design: .monospaced))
                            .foregroundColor(Color.gray)
                        DaysTabView() { day in
                            DayView(day: day, tasks: tasks.filter { $0.date.isInSameDay(as: day) }.sorted(by: { $0.date.timeIntervalSince1970 < $1.date.timeIntervalSince1970 }))
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
                                .cornerRadius(radius: 16, corners: [.topLeft, .topRight])
                                .ignoresSafeArea()
                                .listRowBackground(Color.clear)
                                .padding([.leading, .trailing], 10)
                        }
                        .ignoresSafeArea()
                        .frame(idealHeight: .infinity)
                    }
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            NavigationLink {
                                NewTaskForm(tasks: $tasks)
                                    .navigationBarTitleDisplayMode(.large)
                            } label: {
                                Image(systemName: "plus.circle.fill")
                                    .font(.system(size: 50))
                                    .foregroundColor(.accentColor)
                            }
                            .padding()
                        }
                    }
                }
            }
        }
    }
}

struct InfinityTabPageWrapperView_Previews: PreviewProvider {
    static var previews: some View {
        InfiniteWeekView()
            .environmentObject(WeekStore())
    }
}
