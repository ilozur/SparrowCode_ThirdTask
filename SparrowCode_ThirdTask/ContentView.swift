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
                    .offset(x: isTapped ? 38 : 0)
                    .scaleEffect(isTapped ? 1 : 0)
                    .opacity(isTapped ? 1 : 0)
                    .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0))
                Image(systemName: "play.fill")
                    .offset(x: isTapped ? 38 : 0)
                Image(systemName: "play.fill")
                    .offset(x: isTapped ? 10 : 0)
                    .scaleEffect(isTapped ? 0 : 1)
                    .opacity(isTapped ? 0 : 1)
                    .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0))
            }
            .foregroundStyle(.blue)
            .font(.system(size: 54))
        }
    }
}

#Preview {
    ContentView()
}
