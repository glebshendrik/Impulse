//
//  TimeColorWidgetManaged.swift
//  Impulse
//
//  Created by Gleb Shendrik on 13.10.2020.
//

import RealmSwift

@objcMembers final class TimeColorWidgetManaged: Object {
    dynamic var id: String = ""
    dynamic var textColor: String = ""
    dynamic var bgHexColor: String = ""
    dynamic var position: Int = 0
    dynamic var isShowBattery: Bool = false
    
    override class func primaryKey() -> String? {
        return "id"
    }
}
