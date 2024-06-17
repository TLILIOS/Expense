//
//  AppStorage.swift
//  Expense
//
//  Created by HTLILI on 17/06/2024.
//

import SwiftUI

struct ApStorge: View {
    @AppStorage("tapCount") private var tapCount = 0
    var body: some View {
        Button("Tap Count: \(tapCount)") {
            tapCount += 1
        }
    }
}

#Preview {
    ApStorge()
}
