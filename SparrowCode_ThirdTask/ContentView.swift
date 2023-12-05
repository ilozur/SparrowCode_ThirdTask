//
//  ContentView.swift
//  SparrowCode_ThirdTask
//
//  Created by Edmond Podlegaev on 05.12.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isTapped: Bool = false
    @State private var isChange: Bool = false
    
    var body: some View {
        Button {
            isTapped.toggle()
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                isChange.toggle()
            }
        } label: {
            if isChange {
                HStack(spacing: -10) {
                    Image(systemName: "play.fill")
                        .offset(x: isTapped ? -15 : 20)
                        .scaleEffect(isTapped ? 0 : 1)
                        .opacity(isTapped ? 0 : 1)
                    Image(systemName: "play.fill")
                        .offset(x: isTapped ? -15 : 20)
                    Image(systemName: "play.fill")
                        .offset(x: isTapped ? -20 : 15)
                        .scaleEffect(isTapped ? 1 : 0)
                        .opacity(isTapped ? 1 : 0)
                }
                .foregroundStyle(.blue)
                .font(.system(size: 72))
                .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0))
            } else {
                HStack(spacing: -10) {
                    Image(systemName: "play.fill")
                        .offset(x: isTapped ? 20 : -15)
                        .scaleEffect(isTapped ? 1 : 0)
                        .opacity(isTapped ? 1 : 0)
                    Image(systemName: "play.fill")
                        .offset(x: isTapped ? 20 : -15)
                    Image(systemName: "play.fill")
                        .offset(x: isTapped ? 15 : -20)
                        .scaleEffect(isTapped ? 0 : 1)
                        .opacity(isTapped ? 0 : 1)
                }
                .foregroundStyle(.blue)
                .font(.system(size: 72))
                .animation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0))
            }
        }
    }
}

#Preview {
    ContentView()
}
