//
//  Task.swift
//  NotesApp
//
//  Created by Krystsina on 30/10/2023.
//

import Foundation

struct Task: Codable, Identifiable {
    let id = UUID()
    var title: String
    var isCompleted: Bool = false
}
