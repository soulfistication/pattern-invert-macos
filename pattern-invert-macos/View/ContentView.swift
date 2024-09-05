//
//  ContentView.swift
//  pattern-invert-macos
//
//  Created by Iván Almada on 5/4/24.
//

import SwiftUI

struct ContentView: View {

    let timer = Timer.publish(every: Config.timeInterval, on: .main, in: .common).autoconnect()

    @State var viewIsBlack: Bool
    
    @State var numberOfStimulusLeft = Config.numberOfStimulus

    var body: some View {
        ZStack {
            if viewIsBlack {
                CheckeredBoardView(startsBlack: true)
                    .onReceive(timer) { date in
                        viewIsBlack.toggle()
                        numberOfStimulusLeft -= 1
                    }
            } else {
                CheckeredBoardView(startsBlack: false)
                    .onReceive(timer) { date in
                        viewIsBlack.toggle()
                        numberOfStimulusLeft -= 1
                    }
            }
            Text("🔴")
            if numberOfStimulusLeft <= 0 {
                BlackView()
                    .frame(width: 4000, height: 4000)
            }
        }
    }
}

#Preview {
    ContentView(viewIsBlack: true)
        .frame(width: 125, height: 125)
}
