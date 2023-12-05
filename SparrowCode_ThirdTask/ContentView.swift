//
//  ContentView.swift
//  SparrowCode_ThirdTask
//
//  Created by Edmond Podlegaev on 05.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack(spacing: -10) {
            Image(systemName: "play.fill")
            Image(systemName: "play.fill")
        }
        .foregroundStyle(.blue)
        .font(.system(size: 54))
    }
}

#Preview {
    ContentView()
}
