//
//  SideBarView.swift
//  NotesApp
//
//  Created by Krystsina on 30/10/2023.
//

import SwiftUI

struct SideBarView: View {
    var body: some View {
        List {
            Text("Favorites")
            Text("Completed")
        }
    }
}

#Preview {
    SideBarView()
}
