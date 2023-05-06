//
//  UIFontExtension.swift
//  RSS Reader Demo
//
//  Created by Sorfian on 24/04/23.
//

import UIKit

extension UIFont {
    class func rounded(size: CGFloat, weight: UIFont.Weight) -> UIFont {
        let systemFont = UIFont.systemFont(ofSize: size, weight: weight)
        let font: UIFont
        
        if let descriptor = systemFont.fontDescriptor.withDesign(.rounded) {
            font = UIFont(descriptor: descriptor, size: size)
        } else {
            font = systemFont
        }
        return font
    }
}
