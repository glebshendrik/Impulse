//
//  UIFont+Extension.swift
//  Impulse
//
//  Created by Gleb Shendrik on 07.10.2020.
//

import UIKit

final class AppFont {
    
    enum Roboto {
        
        static func bold(size: CGFloat) -> UIFont {
            return FontFamily.Roboto.bold.font(size: size)
        }
        
        static func medium(size: CGFloat) -> UIFont {
            return FontFamily.Roboto.medium.font(size: size)
        }
        
        static func regular(size: CGFloat) -> UIFont {
            return FontFamily.Roboto.regular.font(size: size)
        }
    }
    
}
