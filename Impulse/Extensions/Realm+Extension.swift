//
//  Realm+Extension.swift
//  Impulse
//
//  Created by Gleb Shendrik on 13.10.2020.
//

import RealmSwift
import Realm

extension Realm {
    /// Instance of Realm for current thread
    static var instance: Realm {
        let fileURL = FileManager.default
            .containerURL(forSecurityApplicationGroupIdentifier: Constants.appGroupId)!
            .appendingPathComponent("default.realm")
        let configuration = Realm.Configuration(fileURL: fileURL, schemaVersion: Constants.realmSchemaVersion, deleteRealmIfMigrationNeeded: false)
        let realm = try! Realm(configuration: configuration)
        return realm
    }
}
