//
//  ContentView.swift
//  Landmarks
//
//  Created by Chuanyu on 2023/5/13.
//

import SwiftUI
//':' is for type defination
struct ContentView: View {
    @State private var selection: Tab = .featured
    
    enum Tab{
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection){
            CategoryHome()
                .tabItem{
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            landmarkList()
                .tabItem{
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
