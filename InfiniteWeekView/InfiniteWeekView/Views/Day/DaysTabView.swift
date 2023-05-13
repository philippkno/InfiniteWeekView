//
//  DaysTabView.swift
//  InfiniteWeekView
//
//  Created by Philipp Knoblauch on 13.05.23.
//

import SwiftUI

struct DaysTabView<Content: View>: View {
    @EnvironmentObject var weekStore: WeekStore

    @State private var activeTab: Int = 1
    @State private var direction: TimeDirection = .unknown

    let content: (_ day: Date) -> Content

    init(@ViewBuilder content: @escaping (_ day: Date) -> Content) {
        self.content = content
    }

    var body: some View {
        TabView(selection: $activeTab) {
            content(weekStore.selectedDate.yesterday)
                .frame(maxWidth: .infinity)
                .tag(0)

            content(weekStore.selectedDate)
                .frame(maxWidth: .infinity)
                .tag(1)
                .onDisappear() {
                    if direction != .unknown {
                        weekStore.select(date: direction == .future ? weekStore.selectedDate.tomorrow : weekStore.selectedDate.yesterday)
                    }

                    direction = .unknown
                    activeTab = 1
                }

            content(weekStore.selectedDate.tomorrow)
                .frame(maxWidth: .infinity)
                .tag(2)
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .onChange(of: activeTab) { value in
            if value == 0 {
                direction = .past
            } else if value == 2 {
                direction = .future
            }
        }
    }
}

struct DaysTabView_Previews: PreviewProvider {
    static var previews: some View {
        DaysTabView() { day in
            Text(day.toString(format: "EEEE, dd.MM.yyyy"))
        }.environmentObject(WeekStore())
    }
}
