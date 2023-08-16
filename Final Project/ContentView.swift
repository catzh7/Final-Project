//
//  ContentView.swift
//  Final Project
//
//  Created by catzh on 8/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            HStack {
                Image("munch")
                    .resizable()
                        .scaledToFit()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
            }
            
            Text("Recipe Of The Day:")
            
            VStack {
                Text("Macaroni and Cheese")
                Image("pasta")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                Link("Link to Recipe", destination: URL(string: "https://www.thechunkychef.com/family-favorite-baked-mac-and-cheese/")!)
            }
            
            VStack {
                NavigationLink(destination: mealGenerator()) {
                    Text("Make A Meal")
                }
                NavigationLink(destination: mindfulness()) {
                    Text("Track Your Hunger")
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
