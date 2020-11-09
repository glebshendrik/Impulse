//
//  TimeColorWidget.swift
//  Impulse
//
//  Created by Gleb Shendrik on 13.10.2020.
//

import UIKit

struct TimeColorWidget: WidgetInfo, Translatable {
    
    private let bgHexColor: String
    
    // MARK: - WidgetInfo
    
    var id: String
    
    var type: WidgetType {
        return .monoColor
    }
    
    var isShowBattery: Bool
    
    var isShowPlaceholder: Bool {
        return true
    }
    
    var backgroundImage: UIImage? {
        return UIImage(colorHexString: bgHexColor, size: CGSize(width: 329, height: 155))
    }
    
    var smallBackgroundImage: UIImage? {
        return UIImage(colorHexString: bgHexColor)
    }
    
    var textColor: UIColor
    
    var position: Int = 0
    
    func loadMediumBackgroundImage(completion: ((UIImage?) -> ())) {
        completion(backgroundImage)
    }
    
    // MARK: - Init
    
    init(id: String, bgHexColor: String, textColor: UIColor, isShowBattery: Bool = true) {
        self.id = id
        self.bgHexColor = bgHexColor
        self.textColor = textColor
        self.isShowBattery = isShowBattery
    }
    
    // MARK: - Translatable
    
    init(object: TimeColorWidgetManaged) {
        self.id = object.id
        self.bgHexColor = object.bgHexColor
        self.textColor = UIColor(hexString: object.textColor)
        self.position = object.position
        self.isShowBattery = object.isShowBattery
    }
    
    func toManagedObject() -> TimeColorWidgetManaged {
        let object = TimeColorWidgetManaged()
        object.id = self.id
        object.bgHexColor = self.bgHexColor
        object.textColor = self.textColor.toHexString()
        object.position = self.position
        object.isShowBattery = self.isShowBattery
        return object
    }
}
