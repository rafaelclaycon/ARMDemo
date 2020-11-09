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
                
                ScrollView {
                    Text("🍎")
                        .font(.title)
                    Text("João Vítor dos Santos")
                    Text("Leticia Sant'anna")
                    Text("Matheus Milanezi")
                    Text("Rafael Schmitt")
                }
            }
            Button(action: {
                exibirModal = true
            }) {
                Text("Autores")
            }
            .sheet(isPresented: $exibirModal, content: {
                Text("João Vítor dos Santos")
                Text("Leticia Sant'anna")
                Text("Matheus Milanezi")
                Text("Rafael Schmitt")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
