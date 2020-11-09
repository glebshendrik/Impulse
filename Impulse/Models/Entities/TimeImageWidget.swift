//
//  ImageWidget.swift
//  Impulse
//
//  Created by Gleb Shendrik on 13.10.2020.
//

import Foundation
import UIKit

struct TimeImageWidget: WidgetInfo, Translatable {
    
    private let smallImageName: String?
    private let mediumImageName: String?
    private var image: UIImage?
    
    private let fileStorageService: FilesStorageProtocol = FilesStorage.shared
    
    // MARK: - WidgetInfo
    
    var id: String
    
    var textColor: UIColor
    
    var position: Int = 0
    
    var type: WidgetType { return .image }
    
    var isShowBattery: Bool
    
    var isShowPlaceholder: Bool { return false }
    
    var backgroundImage: UIImage? {
        if let name = mediumImageName {
            return UIImage(named: name)
        }
        return fileStorageService.loadImage(id: id)
    }
    
    var smallBackgroundImage: UIImage? {
        if let name = smallImageName {
            return UIImage(named: name)
        }
        return fileStorageService.loadImage(id: id)
        
    }
    
    func loadMediumBackgroundImage(completion: @escaping ((UIImage?) -> ())) {
        if let name = mediumImageName {
            completion(UIImage(named: name))
        } else {
            fileStorageService.loadImage(id: id, completion: completion)
        }
    }
    
    // MARK: - Init
    
    init(id: String, smallImageName: String?, mediumImageName: String?, textColor: UIColor, isShowBattery: Bool = false) {
        self.id = id
        self.smallImageName = smallImageName
        self.mediumImageName = mediumImageName
        self.textColor = textColor
        self.isShowBattery = isShowBattery
    }
    
    init(id: String, image: UIImage, textColor: UIColor, isShowBattery: Bool = false) {
        self.id = id
        self.textColor = textColor
        self.isShowBattery = isShowBattery
        self.image = image
        self.smallImageName = nil
        self.mediumImageName = nil
    }
    
    // MARK: - Translatable
    
    init(object: TimeImageWidgetManaged) {
        self.id = object.id
        self.textColor = UIColor(hexString: object.textColor)
        self.smallImageName = object.smallImageName
        self.mediumImageName = object.mediumImageName
        self.position = object.position
        self.isShowBattery = object.isShowBattery
    }
    
    func toManagedObject() -> TimeImageWidgetManaged {
        let object = TimeImageWidgetManaged()
        object.id = self.id
        object.textColor = self.textColor.toHexString()
        object.smallImageName = self.smallImageName
        object.mediumImageName = self.mediumImageName
        object.position = self.position
        object.isShowBattery = self.isShowBattery
        if let image = self.image {
            self.fileStorageService.saveImage(image, id: id)
        }
        return object
    }
}
