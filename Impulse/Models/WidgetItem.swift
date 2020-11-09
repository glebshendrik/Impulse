//
//  WidgetItem.swift
//  Impulse
//
//  Created by Gleb Shendrik on 21.09.2020.
//

import UIKit

enum WidgetItem: String, Codable, CaseIterable {
    
    case red = "#FF4848"
    case redLight = "#FF7448"
    case orange = "#FF9F48"
    case yellow = "#FFCB44"
    case greenLight = "#7DD133"
    case green = "#15C86A"
    case teal = "#00CEC8"
    case blueLight = "#4BCCFF"
    case blue = "#4AADFF"
    case blueDark = "#4A4AFF"
    case blueDarkDark = "#1A1AA5"
    case purple = "#9300C7"
    case violetLight = "#9E4AFF"
    case violet = "#851CFF"
    case pinkLight = "#FB64FF"
    case pinkDark = "#C407CA"
    case pink = "#F140C0"
    case black = "#262429"
    case grey = "#99989C"
    case white = "#FFFFFF"
    
    case image7 = "7"
    case image19 = "19"
    case image40 = "40"
    case image8 = "8"
    case image2 = "2"
    case image3 = "3"
    case image17 = "17"
    case image18 = "18"
    case image15 = "15"
    case image16 = "16"
    case image13 = "13"
    case image41 = "41"
    case image38 = "38"
    case image25 = "25"
    case image39 = "39"
    case image32 = "32"
    case image30 = "30"
    case image26 = "26"
    case image27 = "27"
    case image42 = "42"
    case image22 = "22"
    case image31 = "31"
    case image33 = "33"
    case image28 = "28"
    case image6 = "6"
    case image35 = "35"
    case image11 = "11"
    case image10 = "10"
    
    /**
     Тип виджета
     */
    var type: WidgetType {
        switch self {
        case .red, .redLight, .orange, .yellow, .greenLight, .green, .teal, .blueLight, .blue, .blueDark, .blueDarkDark, .purple, .violetLight, .violet, .pinkLight, .pinkDark, .pink, .black, .grey, .white:
            return .monoColor
        default:
            return .image
        }
    }
    
    /**
     Отображать ли заряд батареи
     */
    var isShowBattery: Bool {
        return type == .monoColor
    }
    
    /**
     Отображать ли на фоне виджета текст AM/PM (MMM)
     */
    var isShowPlaceholder: Bool {
        return type == .monoColor
    }
    
    /**
     Изображение для фона (для моно-цветного виджета генерируется картинка с цвета)
     */
    var backgroundImage: UIImage? {
        if type == .monoColor {
            return UIImage(colorHexString: self.rawValue, size: CGSize(width: 329, height: 155))
        } else {
            return UIImage(named: "widget-bg-medium-\(self.rawValue)")
        }
    }
    
    /**
     Изображение для фона миниатюрного виджета  (для моно-цветного виджета генерируется картинка с цвета)
     */
    var smallBackgroundImage: UIImage? {
        if type == .monoColor {
            return UIImage(colorHexString: self.rawValue)
        } else {
            return UIImage(named: "widget-bg-small-\(self.rawValue)")
        }
    }
    
    /**
     Основной цвет текста
     */
    var textColor: UIColor {
        switch self {
        case .white: return UIColor(hexString: "#262429")
        case .image25: return UIColor(hexString: "#339570")
        case .image26: return UIColor(hexString: "#E9A2A4")
        case .image27: return UIColor(hexString: "#BFA674")
        case .image28: return UIColor(hexString: "#B0648B")
        case .image30: return UIColor(hexString: "#FDBC78")
        case .image32: return UIColor(hexString: "#A65CA2")
        case .image33: return UIColor(hexString: "#D63B5C")
        case .image39: return UIColor(hexString: "#797979")
        case .image42: return UIColor(hexString: "#CD63A4")
        default: return UIColor.white
        }
    }
}
