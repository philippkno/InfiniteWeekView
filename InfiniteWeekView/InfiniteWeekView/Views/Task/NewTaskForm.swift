//
//  NewTaskForm.swift
//  InfiniteWeekView
//
//  Created by Philipp Knoblauch on 13.05.23.
//

import SwiftUI

struct NewTaskForm: View {
    @Binding var tasks: [Task]

    @State private var name: String = ""
    @State private var date: String = "20.03.2023"
    @State private var imageName: String = "lightbulb.fill"
    @State private var description: String = ""

    var body: some View {
        VStack {
            Form {
                Section(header: Text("Title")) {
                    TextField("Enter a title", text: $name)
                        .padding()
                }

                Section(header: Text("Date")) {
                    HStack {
                        Text("Select a date:")
                        Spacer()
                            .frame(width: 40)
                        ZStack {
                            Rectangle()
                                .foregroundColor(Color(UIColor.darkGray))
                                .cornerRadius(radius: 8, corners: .allCorners)
                            Text(date)
                        }
                    }
                }

                Section(header: Text("Image")) {
                    HStack {
                        Text("Select an image:")
                        Spacer()
                        ZStack {
                            Circle()
                                .foregroundColor(Color(UIColor.darkGray))
                                .frame(width: 65)
                            Image(systemName: imageName)
                                .font(.system(size: 30))
                                .foregroundColor(.primary)
                        }
                    }
                }
            }

            Button(action: {
                tasks.append(.init(iconName: imageName,
                                   date: Date(),
                                   description: name,
                                   isCompleted: false))
            }, label: {
                Label("Create", systemImage: "plus.circle")
                    .font(.system(size: 20))
            })
            .buttonStyle(.borderedProminent)
            .padding(.bottom, 10)
        }
        .navigationTitle("Create new task")
    }
}

struct NewTaskForm_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskForm(tasks: .constant([.init(iconName: "person", date: Date(), description: "Description", isCompleted: false)]))
    }
}
