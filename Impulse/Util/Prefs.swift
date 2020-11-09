//
//  Prefs.swift
//  WidgetsApp
//
//  Created by Gleb Shendrik on 19.10.2020.
//

import Foundation

class Prefs {
    
    static var shared = Prefs()
    
    enum KEYS: String {
        case HIDEUPDATESCREEN = "HIDEUPDATESCREEN"
        case keySwiftRaterFirstUseDate = "keySwiftRaterFirstUseDate"
    }
    
    func clear() {
        guard let bundleID = Bundle.main.bundleIdentifier else { return }
        UserDefaults.standard.removePersistentDomain(forName: bundleID)
    }
    
    var isHideUpdateScreen: Bool {
        get {
            let value = UserDefaults.standard.double(forKey: Prefs.KEYS.keySwiftRaterFirstUseDate.rawValue)
            let wasSwiftraterHere = value != 0
            let alreadyShowSorry = UserDefaults.standard.bool(forKey: Prefs.KEYS.HIDEUPDATESCREEN.rawValue)
            return !wasSwiftraterHere || alreadyShowSorry
        }
        set (newValue) { UserDefaults.standard.set(newValue, forKey: Prefs.KEYS.HIDEUPDATESCREEN.rawValue) }
    }
    
}
