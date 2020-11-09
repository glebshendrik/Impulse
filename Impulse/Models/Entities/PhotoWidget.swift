//
//  PhotoWidget.swift
//  Impulse
//
//  Created by Gleb Shendrik on 18.10.2020.
//

import UIKit

struct PhotoWidget: WidgetInfo, Translatable {
    
    private let fileStorageService: FilesStorageProtocol = FilesStorage.shared
    
    // MARK: - WidgetInfo
    
    var id: String
    
    var type: WidgetType {
        return .photo
    }
    
    var isShowBattery: Bool
    
    var isShowPlaceholder: Bool
    
    var backgroundImage: UIImage? {
        return fileStorageService.loadImage(id: id)
    }
    
    var smallBackgroundImage: UIImage? {
        return fileStorageService.loadImage(id: id)
    }
    
    var textColor: UIColor
    
    var position: Int = 0
    
    private var image: UIImage?
    
    func loadMediumBackgroundImage(completion: @escaping ((UIImage?) -> ())) {
        fileStorageService.loadImage(id: id, completion: completion)
    }
    
    init(id: String, image: UIImage, isShowBattery: Bool = false, textColor: UIColor = .clear, isShowPlaceholder: Bool = false) {
        self.id = id
        self.image = image
        self.isShowBattery = isShowBattery
        self.textColor = textColor
        self.isShowPlaceholder = isShowPlaceholder
    }
    
    // MARK: - Translatable
    
    init(object: PhotoWidgetManaged) {
        self.id = object.id
        self.isShowBattery = object.isShowBattery
        self.position = object.position
        self.textColor = UIColor(hexString: object.textColorHex)
        self.isShowPlaceholder = object.isShowPlaceholder
    }
    
    func toManagedObject() -> PhotoWidgetManaged {
        let object = PhotoWidgetManaged()
        object.id = self.id
        object.isShowBattery = self.isShowBattery
        object.position = self.position
        object.textColorHex = self.textColor.toHexString()
        object.isShowPlaceholder = self.isShowPlaceholder
        if let image = self.image {
            self.fileStorageService.saveImage(image, id: id)
        }
        return object
    }
}
