//
//  ContentView.swift
//  Landmarks
//
//  Created by Chuanyu on 2023/5/13.
//

import SwiftUI
//':' is for type defination
struct ContentView: View {
    var body: some View {
        landmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
                    .environmentObject(ModelData())
    }
}
