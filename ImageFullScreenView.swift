//
//  ExpandedImageView.swift
//  App_Store_DeepFake
//
//  Created by Scott Kirker on 12/12/23.
//

import SwiftUI

struct ImageFullScreenView: View {
    @Environment(\.dismiss) var dismiss
    var imageName: String
    var body: some View {
        ZStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .onTapGesture {
                    // Dismiss the full screen view
                    dismiss()
                }
        }.frame(maxWidth:.infinity, maxHeight: .infinity)
    }
}

struct ImageFullScreenView_Previews: PreviewProvider {
    static var previews: some View {
        ImageFullScreenView(imageName:"01")
    }
}
