//
//  WeekView.swift
//  InfiniteWeekView
//
//  Created by Philipp Knoblauch on 13.05.23.
//

import SwiftUI

struct WeekView: View {
    @EnvironmentObject var weekStore: WeekStore

    var week: Week

    var body: some View {
        HStack {
            ForEach(0..<7) { i in
                VStack {
                    Text(week.dates[i].toString(format: "EEE").uppercased())
                        .font(.system(size: 16))
                        .fontWeight(.semibold)
                        .frame(maxWidth:.infinity)
                    Spacer()
                        .frame(height: 4)
                    ZStack {
                        HStack{
                            Spacer()
                                .frame(width: 5)
                            Circle()
                                .foregroundColor(week.dates[i] == week.referenceDate ? .accentColor : .clear)
                            Spacer()
                                .frame(width: 5)
                        }
                        Text(week.dates[i].toString(format: "d"))
                            .font(.system(size: 16))
                            .monospaced()
                            .frame(maxWidth: .infinity)
                            .foregroundColor(week.dates[i] == week.referenceDate ? .white : .primary)
                    }
                }.onTapGesture {
                    withAnimation {
                        weekStore.selectedDate = week.dates[i]
                    }
                }
                .frame(maxWidth: .infinity)
            }
        }
        .padding()
    }
}

struct WeekView_Previews: PreviewProvider {
    static var previews: some View {
        WeekView(week: .init(index: 1, dates:
                                [
                                    Date().yesterday.yesterday.yesterday,
                                    Date().yesterday.yesterday,
                                    Date().yesterday,
                                    Date(),
                                    Date().tomorrow,
                                    Date().tomorrow.tomorrow,
                                    Date().tomorrow.tomorrow.tomorrow
                                ],
                             referenceDate: Date()))
        .environmentObject(WeekStore())
    }
}
