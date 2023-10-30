//
//  TaskListView.swift
//  NotesApp
//
//  Created by Krystsina on 30/10/2023.
//

import SwiftUI

struct TaskListView: View {
    
    @StateObject private var viewModel = TaskListViewModel()
    
    var body: some View {
        List {
            ForEach(viewModel.tasks) { task in
                HStack {
                    Image(systemName: task.isCompleted ? "circle" : "circlebadge.fill")
                    Text(task.title)
                }
            }
        }
        
        Button(action: {
            viewModel.addNewTask(title: "New Task")
        }, label: {
            HStack {
                Image(systemName: "plus")
                    .onTapGesture {
                        
                    }
                Text("Add Task")
            }
        })
        .buttonStyle(.borderless)
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    TaskListView()
}
