//
//  landmarkList.swift
//  Landmarks
//
//  Created by Chuanyu on 7/16/23.
//

import SwiftUI

struct landmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks){
                    landmark in
                    NavigationLink{LandmarkDetail (landmark: landmark)}
                label: {
                    LandmarkRow(landmark: landmark)
                }
                }
            }.navigationTitle("Landmarks")
        }
        
    }
}

struct landmarkList_Previews: PreviewProvider {
    static var previews: some View {
        landmarkList()
            .environmentObject(ModelData())
    }
}
