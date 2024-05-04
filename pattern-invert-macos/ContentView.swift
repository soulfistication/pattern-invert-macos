//
//  ContentView.swift
//  pattern-invert-macos
//
//  Created by Iván Almada on 5/4/24.
//

import SwiftUI

struct ContentView: View {

    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    @State var viewIsBlack: Bool

    var body: some View {
        if viewIsBlack {
            CheckeredBoardView(startsBlack: true)
                .onReceive(timer) { date in
                    viewIsBlack.toggle()
                }
        } else {
            CheckeredBoardView(startsBlack: false)
                .onReceive(timer) { date in
                    viewIsBlack.toggle()
                }
        }
    }

}

#Preview {
    ContentView(viewIsBlack: true)
        .frame(width: 400, height: 400)
}
