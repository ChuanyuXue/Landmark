//
//  landmarkList.swift
//  Landmarks
//
//  Created by Chuanyu on 7/16/23.
//

import SwiftUI

struct landmarkList: View {
    var body: some View {
        NavigationView{
            List(landmarks){
                landmark in
                NavigationLink{LandmarkDetail (landmark: landmark)} label: {
                    LandmarkRow(landmark: landmark)
                }
            }.navigationTitle("Landmarks")
        }
        
    }
}

struct landmarkList_Previews: PreviewProvider {
    static var previews: some View {
        landmarkList()
    }
}
