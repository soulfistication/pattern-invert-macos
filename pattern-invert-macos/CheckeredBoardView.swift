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
        if startsBlack {
            VStack(spacing: 0) {
                ForEach((1...8), id: \.self) { i in
                    if i % 2 == 0 {
                        CheckeredRowView(startsBlack: true)
                    } else {
                        CheckeredRowView(startsBlack: false)
                    }
                }
            }
        } else {
            VStack(spacing: 0) {
                ForEach((1...8), id: \.self) { i in
                    if i % 2 == 0 {
                        CheckeredRowView(startsBlack: false)
                    } else {
                        CheckeredRowView(startsBlack: true)
                    }
                }
            }
        }

    }
}

#Preview {
    CheckeredBoardView(startsBlack: false)
        .frame(width: 400, height: 400)
}
