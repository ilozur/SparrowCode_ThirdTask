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
                withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0)) {
                    HStack(spacing: -10) {
                        Image(systemName: "play.fill")
                            .offset(x: isTapped ? -15 : 21)
                            .scaleEffect(isTapped ? 0 : 1)
                            .opacity(isTapped ? 0 : 1)
                        Image(systemName: "play.fill")
                            .offset(x: isTapped ? -15 : 18)
                        Image(systemName: "play.fill")
                            .offset(x: isTapped ? -18 : 17)
                            .scaleEffect(isTapped ? 1 : 0)
                            .opacity(isTapped ? 1 : 0)
                    }
                    .foregroundStyle(.blue)
                    .font(.system(size: 54))
                }
            } else {
                withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 0)) {
                    HStack(spacing: -10) {
                        Image(systemName: "play.fill")
                            .offset(x: isTapped ? 21 : -15)
                            .scaleEffect(isTapped ? 1 : 0)
                            .opacity(isTapped ? 1 : 0)
                        Image(systemName: "play.fill")
                            .offset(x: isTapped ? 18 : -15)
                        Image(systemName: "play.fill")
                            .offset(x: isTapped ? 17 : -18)
                            .scaleEffect(isTapped ? 0 : 1)
                            .opacity(isTapped ? 0 : 1)
                    }
                    .foregroundStyle(.blue)
                    .font(.system(size: 54))
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
