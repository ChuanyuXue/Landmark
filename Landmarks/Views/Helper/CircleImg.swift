//
//  SwiftUIView.swift
//  Landmarks
//
//  Created by Chuanyu on 2023/5/13.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        image
        .clipShape(Circle())
        .overlay {
        Circle().stroke(.gray, lineWidth: 4)
        }
        .shadow(radius: 7)
            
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
