//
//  ContentView.swift
//  ARMDemo WatchKit Extension
//
//  Created by Rafael Schmitt on 08/11/20.
//

import SwiftUI

struct ContentView: View {
    @State private var posY: CGFloat = 0
    @State private var backgroundColor: Color = .blue
    private var elementos = ["CPFs", "Nomes", "Datas de Nascimento"]
    
    // O GeometryGetter vai de 28.0 a -164.0 (topo e pé do scroll view).
    
    var body: some View {
        VStack {
            ZStack {
                Text("\(posY)")
                    .font(.title)
                    .bold()
                    .opacity(0.5)
                
                ScrollView {
                    VStack {
                        GeometryReader { innerGeo -> Text in
                            self.posY = innerGeo.frame(in: .global).minY
                            return Text("")
                        }
                        Text("🇬🇧")
                            .font(.title)
                        Text("🍎")
                            .font(.title)
                        Text("📱")
                            .font(.title)
                        Text("⌚️")
                            .font(.title)
                        Text("💻")
                            .font(.title)
                        Text("🌎")
                            .font(.title)
                        Text("João dos Santos")
                            .font(.title3)
                        Text("Leticia Sant'anna")
                            .font(.title3)
                        Text("Matheus Milanezi")
                            .font(.title3)
//                        Text("Rafael Schmitt")
//                            .font(.title3)
                    }
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
