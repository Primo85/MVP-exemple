//
//  UIView+bwImage.swift
//  MVP
//
//  Created by Struś on 13/12/2017.
//  Copyright © 2017 Przemyslaw Biskup. All rights reserved.
//

import UIKit

extension UIImage {
    var bwImage: UIImage {
        guard let cgImage = cgImage, let bwContext = bwContext else { return self }
        
        let rect = CGRect(origin: .zero, size: size)
        bwContext.draw(cgImage, in: rect)
        let bwCgImage = bwContext.makeImage()
        
        return bwCgImage.flatMap { UIImage(cgImage: $0) } ?? self
    }
    
    private var bwContext: CGContext? {
        let bwContext = CGContext(data: nil,
                                  width: Int(size.width * scale),
                                  height: Int(size.height * scale),
                                  bitsPerComponent: 8,
                                  bytesPerRow: Int(size.width * scale),
                                  space: CGColorSpaceCreateDeviceGray(),
                                  bitmapInfo: CGImageAlphaInfo.none.rawValue)
        
        bwContext?.interpolationQuality = .high
        bwContext?.setShouldAntialias(false)
        
        return bwContext
    }
}
