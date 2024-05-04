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
            if startsBlack {
                ForEach((1...8), id: \.self) { i in
                    if i % 2 == 0 {
                        CheckeredView(isFilled: true)
                    } else {
                        CheckeredView(isFilled: false)
                    }
                }
            } else {
                ForEach((1...8), id: \.self) { i in
                    if i % 2 == 0 {
                        CheckeredView(isFilled: false)
                    } else {
                        CheckeredView(isFilled: true)
                    }
                }
            }
        }
    }
}

#Preview {
    CheckeredRowView(startsBlack: true)
        .frame(width: 320, height: 40)
}
