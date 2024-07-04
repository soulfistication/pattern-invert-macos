//
//  CheckeredBoardView.swift
//  pattern-invert-macos
//
//  Created by Iván Almada on 5/4/24.
//

import SwiftUI

struct CheckeredBoardView: View {

    @State var startsBlack: Bool

    var body: some View {
        VStack(spacing: 0) {
            ForEach((1...16), id: \.self) { i in
                CheckeredRowView(startsBlack: blackStart(i, startsBlack))
            }
        }
    }
}

extension View {
    func blackStart(_ i: Int, _ startsBlack: Bool) -> Bool {
        startsBlack ? (i % 2 == 0) : !(i % 2 == 0)
    }
}

#Preview {
    CheckeredBoardView(startsBlack: false)
        .frame(width: 400, height: 400)
}
