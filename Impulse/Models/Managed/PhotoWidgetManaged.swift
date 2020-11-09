//
//  PhotoWidgetManaged.swift
//  Impulse
//
//  Created by Gleb Shendrik on 18.10.2020.
//

import RealmSwift

@objcMembers final class PhotoWidgetManaged: Object {
    dynamic var id: String = ""
    dynamic var position: Int = 0
    dynamic var isShowBattery: Bool = false
    dynamic var textColorHex: String = ""
    dynamic var isShowPlaceholder: Bool = false
    
    override class func primaryKey() -> String? {
        return "id"
    }
}
