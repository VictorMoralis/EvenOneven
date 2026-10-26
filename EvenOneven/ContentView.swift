//
//  ContentView.swift
//  EvenOneven
//
//  Created by Victor Moralis on 12/10/2026.
//

import SwiftUI

struct ContentView: View {
    @State var invoer: String = ""
    @State var uitvoer: String = ""
    var body: some View {
        VStack {
            HeaderView("even en oneven", subtitle: "@state, gehele deling, tertiare operator, textfield, button", desc: "de app berekent van een gegeven getal of het even of oneven is..", back: .indigo, textColor: .gray)
            
            Spacer()
            TextField(text: $invoer, label:{
                Text("geef een getal in: ")
            })
            .padding()
            Button("even of oneven?"){
                if let getal = Int(invoer){
             
                    uitvoer = getal % 2 == 0 ? "EVEN" :  "ONEVEN"
                    
                    
                }
                else {uitvoer = "je moet een geheel getal invoeren"}
                
                
                
                
                
            }
            Text(uitvoer)
            Spacer()
            
        }
    }
}

#Preview {
    ContentView()
}
