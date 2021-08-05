//
//  Dog.swift
//  test-owkesfm
//
//  Created by Nutchaphon Rewik on 5/8/2564 BE.
//

import Foundation
import RealmSwift

class Dog: Object {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var name = ""
}
