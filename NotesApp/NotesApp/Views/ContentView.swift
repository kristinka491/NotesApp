//
//  ContentView.swift
//  NotesApp
//
//  Created by Krystsina on 30/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationSplitView(sidebar: {
            SideBarView()
        }, detail: {
            TaskListView()
        })
    }
}

#Preview {
    ContentView()
}
