//
//  ContentView.swift
//  InfiniteWeekView
//
//  Created by Philipp Knoblauch on 13.05.23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var weekStore: WeekStore = WeekStore()
    
    var body: some View {
        InfiniteWeekView()
            .environmentObject(weekStore)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
