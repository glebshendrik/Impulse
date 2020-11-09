//
//  UIView+Extension.swift
//  Impulse
//
//  Created by Gleb Shendrik on 23.09.2020.
//

import UIKit

extension UIView {
    
    func addShadow(color: UIColor, opacity: Float = 1.0, offSet: CGSize, shadowRadius: CGFloat, cornerRadius: CGFloat = 0) {
        layer.cornerRadius = cornerRadius
        layer.shadowColor = color.cgColor
        layer.shadowOffset = offSet
        layer.shadowOpacity = opacity
        layer.shadowRadius = shadowRadius
    }
}
