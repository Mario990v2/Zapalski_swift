//
//  Card.swift
//  Zapalski_swift
//
//  Created by student on 27/04/2024.
//
//
import SwiftUI
struct Card: View {
    @State var czyZakryta:Bool = true;
    var buzka:String = "";
    init(buzka: String) {
        self.buzka = buzka
    }
    var body: some View {
        let baza = RoundedRectangle(cornerRadius: 12)
        let baza2 = RoundedRectangle(cornerRadius: 12)
        
    
            Group{
                ZStack{
                    baza.fill(.white)
                        .frame(height: 80)
                        .overlay(RoundedRectangle(cornerRadius: 12)
                        .stroke(.green,lineWidth: 2)
                    )
                    .onTapGesture {
                        czyZakryta = !czyZakryta
                    }
                    Text(buzka).font(.largeTitle)
                    
//                    RoundedRectangle(cornerRadius: 12)
                        baza2.fill(.green)
                        .frame(height: 80)
                        .opacity(czyZakryta ? 1 : 0)
                        .onTapGesture {
                            czyZakryta = !czyZakryta
                        }
                    
                }
        }.opacity(1)
    }
}
