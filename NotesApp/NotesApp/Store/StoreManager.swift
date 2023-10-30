//
//  StoreManager.swift
//  NotesApp
//
//  Created by Krystsina on 30/10/2023.
//

import Foundation

class StoreManager {
    
    enum Constants {
        static let key = "todoList"
    }
    
    static let shared = StoreManager()

    private let userDefaults = UserDefaults.standard

    private init() {
        if let savedData = userDefaults.data(forKey: Constants.key),
           let loadedTasks = try? JSONDecoder().decode([Task].self, from: savedData) {
            tasks = loadedTasks
        }
    }

    var tasks: [Task] = [] {
        didSet {
            if let encodedData = try? JSONEncoder().encode(tasks) {
                userDefaults.set(encodedData, forKey: Constants.key)
            }
        }
    }

    func addTask(_ task: Task) {
        tasks.append(task)
    }

    func removeTask(at index: Int) {
        guard index >= 0 && index < tasks.count else { return }
        tasks.remove(at: index)
    }

    func updateTask(at index: Int, with updatedTask: Task) {
        guard index >= 0 && index < tasks.count else { return }
        tasks[index] = updatedTask
    }
}
