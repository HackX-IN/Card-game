//
//  ContentView.swift
//  CardGameSwift
//
//  Created by Inam 07 on 13/10/2566 BE.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard="card11"
    @State var cpuCard="card13"
    @State var PlayerScore:Int=0
    @State var CpuScore:Int=0
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.purple, Color.blue]), startPoint: .bottomLeading, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/).ignoresSafeArea().aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
            VStack{
                Image("logo").padding()
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard).padding()
                    
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                Button(action: {
                    Play()
                }, label: {
                    Image("button")
                })
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player").padding(.bottom,7)
                        Text(String(PlayerScore))
                    }.padding()
                   
                    VStack{
                        Text("CPU").padding(.bottom,7)
                        Text(String(CpuScore))
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
    
    func Play(){
        let PlayerchangeCard=Int.random(in: 3...13)
        playerCard="card"+String(PlayerchangeCard)
        let CpuCard=Int.random(in: 3...13)
        cpuCard="card"+String(CpuCard)
        
        if PlayerchangeCard > CpuCard {
            PlayerScore+=1
        }
        else if CpuCard > PlayerchangeCard {
            CpuScore+=1
        }
        
      
    }
}

#Preview {
    ContentView()
}
