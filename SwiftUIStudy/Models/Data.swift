//
//  Data.swift
//  SwiftUIStudy
//
//  Created by apple on 2020/1/20.
//  Copyright © 2020 yinhe. All rights reserved.
//

import Foundation
import CoreLocation
import SwiftUI



struct ImageStore {
    static let shared = ImageStore()
    func getImage(name: String) -> Image? {
        if let url = Bundle.main.url(forResource: name, withExtension: "jpg"),
            let imageSource = CGImageSourceCreateWithURL(url as NSURL, nil),
            let cgImage = CGImageSourceCreateImageAtIndex(imageSource, 0, nil) {
            return Image(cgImage, scale: 2.0, label: Text(name))
        }
        return nil
    }
}
