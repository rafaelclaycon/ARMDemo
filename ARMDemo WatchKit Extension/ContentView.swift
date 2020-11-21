//
//  ContentView.swift
//  ARMDemo WatchKit Extension
//
//  Created by Rafael Schmitt on 08/11/20.
//

import SwiftUI

struct ContentView: View {
    @State private var posY: CGFloat = 0 {
        didSet {
            if posY >= -80 {
                backgroundColor = .red
                fadeBackground = false
            } else if (posY < -80) && (posY >= -240) {
                backgroundColor = .orange
                fadeBackground = false
            } else if (posY < -240) && (posY >= -400) {
                backgroundColor = .yellow
                fadeBackground = false
            } else if (posY < -400) && (posY >= -560) {
                backgroundColor = .green
                fadeBackground = false
            } else if (posY < -560) && (posY >= -720) {
                backgroundColor = .blue
                fadeBackground = false
            } else {
                backgroundColor = .black
                fadeBackground = true
            }
        }
    }
    @State private var backgroundColor: Color = .red
    @State private var fadeBackground: Bool = true
        
    let rowHeight: CGFloat = 160
    let nameRowHeight: CGFloat = 35
    
    var body: some View {
        VStack {
            ZStack {
                Text("ARM")
                    .font(.largeTitle)
                    .bold()
                    .opacity(self.fadeBackground ? 0.2 : 0.5)
                
                // ScrollView is limited to 10 items on the watch.
                ScrollView {
                    // This GeometryReader is how you get the scroll position.
                    GeometryReader { innerGeo -> Text in
                        self.posY = innerGeo.frame(in: .global).minY
                        return Text("")
                    }
                    Text("🇬🇧")
                        .font(.largeTitle)
                        .frame(height: rowHeight)
                    Text("📱")
                        .font(.largeTitle)
                        .frame(height: rowHeight)
                    Text("⌚️")
                        .font(.largeTitle)
                        .frame(height: rowHeight)
                    Text("💻")
                        .font(.largeTitle)
                        .frame(height: rowHeight)
                    Text("🌎")
                        .font(.largeTitle)
                        .frame(height: rowHeight)
                    Text("João dos Santos")
                        .font(.title3)
                        .frame(height: nameRowHeight)
                    Text("Leticia Sant'anna")
                        .font(.title3)
                        .frame(height: nameRowHeight)
                    Text("Matheus Milanezi")
                        .font(.title3)
                        .frame(height: nameRowHeight)
                    Text("Rafael Schmitt")
                        .font(.title3)
                        .frame(height: nameRowHeight)
                }
            }
        }.background(backgroundColor)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
