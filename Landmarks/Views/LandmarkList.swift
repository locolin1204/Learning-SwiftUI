//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Colin Lo on 3/6/2022.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView{
            List (landmarks) { landmark in
                NavigationLink{
                    LandmarkDetail(landmark: landmark)
                } label:{
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

let deviceNames: [String] = [
    "iPhone SE (3rd generation)",
//    "iPhone 11 Pro",
//    "iPad Pro (12.9-inch) (5th generation)"
]

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(deviceNames, id: \.self){ deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
