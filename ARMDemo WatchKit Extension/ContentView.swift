//
//  ContentView.swift
//  ARMDemo WatchKit Extension
//
//  Created by Rafael Schmitt on 08/11/20.
//

import SwiftUI

struct ContentView: View {
    @State private var exibirModal: Bool = false
    @State private var textoFundo: String = "ARM"
    
    var body: some View {
        VStack {
            ZStack {
                Text(textoFundo)
                    .font(.title)
                    .bold()
                    .opacity(0.5)
                
                ScrollView {
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
                    Text("Rafael Schmitt")
                        .font(.title3)
                }.background(Color.yellow)
            }
        }.background(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
