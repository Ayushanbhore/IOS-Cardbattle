//
//  ContentView.swift
//  cards
//
//  Created by Ayush Anbhore on 21/04/24.
//

import SwiftUI

 

struct ContentView: View {
    
        
        @State private var playerCard = "back"
        @State private var cpuCard = "back"
        @State private var playerValue = 0
        @State private var cpuValue = 0
    
    var body: some View {
        
        ZStack{
            Image("background")
                .renderingMode(.original)
                
                .resizable(resizingMode: .stretch)
                .foregroundColor(Color.orange)
                .ignoresSafeArea()
            
            
            VStack{
                
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                
                Spacer()
                
                Button(action: {
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    if playerRand>cpuRand {
                        playerValue += 1
                    }
                    else if playerRand<cpuRand{
                        cpuValue += 1
                    }
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                }, label: {
                    Image("dealbutton")
                    
                })
                
                
                Spacer()
                HStack{
                    Spacer()
                    
                    VStack(spacing: 20.0){
                        Text("Player")
                            .font(.subheadline)
                            .foregroundColor(Color.white)
                        Text(String(playerValue))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack(spacing: 20.0){
                        
                        Text("CPU")
                            .font(.subheadline)
                            .foregroundColor(Color.white)
                        Text(String(cpuValue))
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
                
            }
            
            
        }
    }
}

#Preview {
    ContentView()
}
