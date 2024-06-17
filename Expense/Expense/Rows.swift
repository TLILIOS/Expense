//
//  ContentView.swift
//  Expense
//
//  Created by HTLILI on 15/06/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("Row \($0)")
                    }
                    .onDelete(perform: removeRows)
                }
                Button("Add Number") {
                    addRows()
                }
            }
            .toolbar {
                EditButton()
            }
        }
    }
    func addRows() {
        numbers.append(currentNumber)
        currentNumber += 1
    }
    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
