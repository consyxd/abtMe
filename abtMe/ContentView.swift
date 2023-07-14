//
//  ContentView.swift
//  abtMe
//
//  Created by Cindy Lu on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var funFact = ""
    private var funFacts = ["My Chinese zodiac animal is a pig!! 🐽🌟", "Rice University is my dream school!! (I wanna go premed + cs) 💙🤍 - gotta dream big ;)", "I can go on and on talking about c-dramas, c-celebs, and cpop!", "I play violin and piano.", "One of my new hobbies is crocheting.", "I lived in 4 different states."]
   
    @State private var index = 0
    //starts at 0
    
    var body: some View {
        ZStack{
            Color("lightPink")
                .ignoresSafeArea()
            VStack {
                Text("Hi, I'm Cindy!")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.blue)
                
                Image("cindy")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                    .shadow(radius:5)
        
                Text(funFact)
                    .foregroundColor(Color.black)
                    .lineLimit(4)
                    .padding()
                
                Button("Get to know me!"){
                    funFact = funFacts[index % funFacts.count]
                    //mod avoids the system crash so it keeps looping based on how many are in the array
                    index += 1
                    //index+1 continue list
                }
                .padding()
             
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .buttonStyle(.borderedProminent)
                .border(Color.white, width: 20)
                .tint(.white)
                
                
                
                
            }
            .padding()
        }
        
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
