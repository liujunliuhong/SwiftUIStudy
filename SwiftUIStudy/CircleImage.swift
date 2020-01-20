//
//  CircleImage.swift
//  SwiftUIStudy
//
//  Created by apple on 2020/1/17.
//  Copyright © 2020 yinhe. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("test")
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.red, lineWidth: 4)
        )
            .shadow(radius: 5)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
