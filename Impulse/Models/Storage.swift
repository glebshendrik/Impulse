//
//  Storage.swift
//  Impulse
//
//  Created by Gleb Shendrik on 13.10.2020.
//

import RealmSwift

protocol StorageProtocol {
    func cachedPlainObjects<T: Translatable>() -> [T]
    func object<T: Translatable>(byPrimaryKey key: AnyHashable) -> T?
    func save<T: Translatable>(objects: [T]) throws
    func save<T: Translatable>(object: T) throws
    func delete<T: Translatable>(objects: [T]) throws
    func delete<T: Translatable>(object: T) throws
    func deleteAll<T: Translatable>(ofType type: T.Type) throws
}

class RealmStorage: StorageProtocol {
    
    func cachedPlainObjects<T: Translatable>() -> [T] {
        let realm = Realm.instance
        let realmObjects = Array(realm.objects(T.ManagedObject.self))
        let translatedObjects = realmObjects.map { T(object: $0) }
        return translatedObjects
    }
    
    func object<T: Translatable>(byPrimaryKey key: AnyHashable) -> T? {
        let realm = Realm.instance
        guard let realmObject = realm.object(ofType: T.ManagedObject.self, forPrimaryKey: key) else { return nil }
        let translatedObject = T(object: realmObject)
        return translatedObject
    }
    
    func save<T: Translatable>(objects: [T]) throws {
        let realm = Realm.instance
        let realmObjects = objects.map { $0.toManagedObject() }
        try realm.write {
            realm.add(realmObjects, update: .all)
        }
    }
    
    func save<T: Translatable>(object: T) throws {
        let realm = Realm.instance
        let realmObject = object.toManagedObject()
        try realm.write {
            realm.add(realmObject, update: .all)
        }
    }
    func delete<T: Translatable>(objects: [T]) throws {
        let realm = Realm.instance
        let realmObjects = objects.map { $0.toManagedObject() }
        try realm.write {
            realm.delete(realmObjects)
        }
    }
    
    func delete<T: Translatable>(object: T) throws {
        let realm = Realm.instance
        let realmObject = object.toManagedObject()
        try realm.write {
            realm.delete(realmObject)
        }
    }
    
    func deleteAll<T: Translatable>(ofType type: T.Type) throws {
        let realm = Realm.instance
        let realmObjects = Array(realm.objects(T.ManagedObject.self))
        try realm.write {
            realm.delete(realmObjects)
        }
    }
}

