//
//  CheckeredView.swift
//  pattern-invert-macos
//
//  Created by Iván Almada on 5/4/24.
//

import SwiftUI

struct CheckeredView: View {

    @State var isFilled: Bool

    var body: some View {
        if isFilled {
            BlackView()
        } else {
            WhiteView()
        }
    }
}

#Preview {
    CheckeredView(isFilled: true)
        .frame(width: 40, height: 40)
}
