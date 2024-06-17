//
//  UserDefaults.swift
//  Expense
//
//  Created by HTLILI on 17/06/2024.
//
import Foundation
import SwiftUI

struct UsrDflts: View {
//    @State private var tapCount = 0
    // OR 
    @State private var tapCount = UserDefaults.standard.integer(forKey: "Tap")
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            UserDefaults.standard.set(tapCount, forKey: "Tap")
            tapCount += 1
        }
    }
}

#Preview {
    UsrDflts()
}
