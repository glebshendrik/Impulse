//
//  WidgetInfo.swift
//  Impulse
//
//  Created by Gleb Shendrik on 13.10.2020.
//

import UIKit

protocol WidgetInfo {
    
    func loadMediumBackgroundImage(completion: @escaping ((UIImage?) -> ()))
    
    /**
     Уникальный идентификатор
     */
    var id: String { get set }
    
    /**
     Тип виджета
     */
    var type: WidgetType { get }
    
    /**
     Отображать ли заряд батареи
     */
    var isShowBattery: Bool { get set }
    
    /**
     Отображать ли на фоне виджета текст AM/PM (MMM)
     */
    var isShowPlaceholder: Bool { get }
    
    /**
     Изображение для фона (для моно-цветного виджета генерируется картинка с цвета)
     */
    var backgroundImage: UIImage? { get }
    
    /**
     Изображение для фона миниатюрного виджета  (для моно-цветного виджета генерируется картинка с цвета)
     */
    var smallBackgroundImage: UIImage? { get }
    
    /**
     Основной цвет текста
     */
    var textColor: UIColor { get set }
    
    /**
     Позиция виджета в списке
     */
    var position: Int { get set }
}

enum WidgetType: Int, CaseIterable {
    case monoColor = 0
    case image = 1
    case photo = 2
    
    var title: String {
        switch self {
        case .monoColor: return NSLocalizedString("all-widgets.colors", comment: "")
        case .image: return NSLocalizedString("all-widgets.images", comment: "")
        case .photo: return NSLocalizedString("all-widgets.photos", comment: "")
        }
    }
}
