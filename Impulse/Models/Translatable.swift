//
//  Translatable.swift
//  Impulse
//
//  Created by Gleb Shendrik on 13.10.2020.
//

import RealmSwift

protocol Translatable {
    associatedtype ManagedObject: Object
    
    init(object: ManagedObject)
    func toManagedObject() -> ManagedObject
}
