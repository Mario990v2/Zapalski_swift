//
//  ContentView.swift
//  Zapalski_swift
//
//  Created by student on 27/04/2024.
//

import SwiftUI



struct ContentView: View {
    @State var icony: Array<String> = ["🤠","🤯","💀","😺","😂" ,"👻","👽","😍","😎","🥳"]
    @State var liczbaikonek = 2
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))]) {
                    ForEach(icony.prefix(liczbaikonek), id: \.self){
                        icona in Card( buzka:icona)
                    }
                }
            }
            
            .padding()
        }
       
        
        HStack{
            Button(action: {
                adjustCardNumber(by: -2)
            }) {
                Image(systemName: "minus.circle")
            }
            .disabled(liczbaikonek <= 2)
            
            Spacer()
            
            Button(action: {
                adjustCardNumber(by: 2)
            }) {
                Image(systemName: "plus.circle")
            }
            .disabled(liczbaikonek >= icony.count)
            
        }
        .font(.title)
        .padding()
    }
    func adjustCardNumber(by offset: Int) {
        let nowaliczbaikonek = liczbaikonek + offset
        if nowaliczbaikonek >= 2 && nowaliczbaikonek <= icony.count {
            liczbaikonek = nowaliczbaikonek
        }
    }

}


#Preview {
    ContentView()
}
