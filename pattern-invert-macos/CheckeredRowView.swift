//
//  CheckeredRowView.swift
//  pattern-invert-macos
//
//  Created by Iván Almada on 5/4/24.
//

import SwiftUI

struct CheckeredRowView: View {

    @State var startsBlack: Bool

    var body: some View {
        HStack(spacing: 0) {
            ForEach((1...8), id: \.self) { i in
                CheckeredView(isFilled: blackStart(i, startsBlack))
            }
        }
    }
}

#Preview {
    CheckeredRowView(startsBlack: true)
        .frame(width: 320, height: 40)
}
