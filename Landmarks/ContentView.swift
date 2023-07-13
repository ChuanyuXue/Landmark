//
//  ContentView.swift
//  Landmarks
//
//  Created by Chuanyu on 2023/5/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .ignoresSafeArea(edges: .top)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
                Text("UConn")
                    .font(.title)
                HStack {
                    Text("Forest Track")
                    Spacer()
                    Text("CT")
                }.font(.subheadline)
                    .foregroundColor(.secondary)
                
            }.padding()
            
            Divider()
            
            VStack {
                Text("Wild Leek")
                    .font(.title2)
                Text("Wild leek, also known as ramps, spring onion, ramson, wild garlic, leeks, or ail des bois, is a North American species of wild onion (Allium tricoccum) that is native to North America. They are known for their strong garlic-like odor and onion-like flavor.")
                    .font(.body)
                    .multilineTextAlignment(.leading).padding()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
