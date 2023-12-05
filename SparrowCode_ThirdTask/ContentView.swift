//
//  ContentView.swift
//  SparrowCode_ThirdTask
//
//  Created by Edmond Podlegaev on 05.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isTapped: Bool = false
    var body: some View {
        Button {
            isTapped.toggle()
        } label: {
            HStack(spacing: -10) {
                Image(systemName: "play.fill")
                Image(systemName: "play.fill")
            }
            .foregroundStyle(isTapped ? .blue : .red)
            .font(.system(size: 54))
        }
    }
}

#Preview {
    ContentView()
}
