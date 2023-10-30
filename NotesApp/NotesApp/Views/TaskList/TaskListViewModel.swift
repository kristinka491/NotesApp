//
//  TaskListViewModel.swift
//  NotesApp
//
//  Created by Krystsina on 30/10/2023.
//

import Foundation
import SwiftUI

class TaskListViewModel: ObservableObject {
    @Published var tasks: [Task] = StoreManager.shared.tasks
    
    func addNewTask(title: String) {
        let newTask = Task(title: title)
        StoreManager.shared.addTask(newTask)
    }
}
