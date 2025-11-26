//
//  EditDestinationView.swift
//  iTour
//
//  Created by Utkarsh  Mehta on 22/10/25.
//

import SwiftUI
import SwiftData

struct EditDestinationView: View {
    @Bindable var destination: Destination
    var body: some View {
        Form {
            TextField("Name", text: $destination.name)
            TextField("Details", text: $destination.details)
            DatePicker("Date", selection: $destination.date)
            
            Section("Prority") {
                Picker("Prority", selection: $destination.priority) {
                    Text("Meh").tag(1)
                    Text("Maybe").tag(2)
                    Text("Must").tag(3)
                }
                .pickerStyle(.segmented)
            }
        }
        .navigationTitle("Edit Destination View")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    let config = ModelConfiguration(isStoredInMemoryOnly: true)
    let container = try! ModelContainer(for: Destination.self, configurations: config)
    let example = Destination(name: "Example Name", details: "Exaple details goes here and will automatically expand vertically as they are edited.")
    EditDestinationView(destination: example)
        .modelContainer(container)
}
