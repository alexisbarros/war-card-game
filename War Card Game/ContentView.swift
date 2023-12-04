//
//  ContentView.swift
//  War Card Game
//
//  Created by Alexis Barros on 04/12/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard: String = "card14"
    @State var cpuCard: String = "card14"
    
    @State var playerValue: Int = 0
    @State var cpuValue: Int = 0
    
    var body: some View {
        ZStack {
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    
                    Spacer()
                    
                }
                
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .padding(10)
                        
                        Text(String(playerValue))
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .padding(10)
                        
                        Text(String(cpuValue))
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    }
                    Spacer()
                    
                }.foregroundColor(.white)
                
                Spacer()
                
            }
            
        }
    }
    
    func deal(){
        let playerRandomValue = Int.random(in: 2...14)
        let cpuRandomValue = Int.random(in: 2...14)
        
        playerCard = "card" + String(playerRandomValue)
        cpuCard = "card" + String(cpuRandomValue)
        
        if playerRandomValue > cpuRandomValue {
            playerValue += 1
        }
        
        if cpuRandomValue > playerRandomValue {
            cpuValue += 1
        }
    }
}

#Preview {
    ContentView()
}
