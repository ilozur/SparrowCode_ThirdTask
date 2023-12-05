//
//  ContentView.swift
//  SparrowCode_ThirdTask
//
//  Created by Edmond Podlegaev on 05.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            Image(systemName: "arrowtriangle.right.fill")
                .imageScale(.large)
            Image(systemName: "arrowtriangle.right.fill")
                .imageScale(.large)
                .offset(x: -20)
        }
        .foregroundStyle(.blue)
        .font(.largeTitle)
    }
}

#Preview {
    ContentView()
}
