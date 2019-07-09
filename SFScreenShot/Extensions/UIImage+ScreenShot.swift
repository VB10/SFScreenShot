//
//  UIImage+ScreenShot.swift
//  SFScreenShot
//
//  Created by VB on 10.07.2019.
//  Copyright © 2019 VB. All rights reserved.
//

import Foundation
import UIKit
extension UIView {
    func takeScreenshotView() -> UIImage {
        
        // Begin context
        UIGraphicsBeginImageContextWithOptions(self.bounds.size, false, UIScreen.main.scale)
        
        // Draw view in that context
        drawHierarchy(in: self.bounds, afterScreenUpdates: true)
        
        // And finally, get image
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        
        if (image != nil)
        {
            return image!
        }
        return UIImage()
    }
    
    func takeshot() -> UIImage? {
        var image :UIImage?
        let currentLayer = UIApplication.shared.keyWindow!.layer
        let currentScale = UIScreen.main.scale
        UIGraphicsBeginImageContextWithOptions(currentLayer.frame.size, false, currentScale);
        guard let currentContext = UIGraphicsGetCurrentContext() else {return nil}
        currentLayer.render(in: currentContext)
        image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        guard let img = image else { return nil}
        return img
    }
}
