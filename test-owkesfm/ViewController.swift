//
//  ViewController.swift
//  test-owkesfm
//
//  Created by Nutchaphon Rewik on 2/8/2564 BE.
//

import UIKit
import Realm
import RealmSwift

class ViewController: UIViewController {

    var realmSwift: Realm!
    var realmObjc: RLMRealm!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1. Setup realm swift file.
        setupRealmSwift()
        
        // 2. Setup realm objc file.
        setupRealmObjc()
        
        // Write Test
        do {
            // 1. realmSwift write
            try realmSwift.write {
                let dog = Dog()
                dog._id = ObjectId.generate()
                dog.name = "abc"
                realmSwift.add(dog, update: .all)
            }
            // 2. realmObjc write
            try realmObjc.transaction {
                let cat = Cat()
                cat._id = ObjectId.generate()
                cat.name = "def"
                realmObjc.addOrUpdate(cat)
            }
        } catch {
            print(error)
        }
        
        // Read Test
        //
        // 1. realmSwift read
        let dogs = realmSwift.objects(Dog.self).filter("name == 'abc'")
        print("Dogs: \(dogs.count)")
        //
        // 2. realmObjc read
        let cats = Cat.objects(in: realmObjc, where: "name == %@", "def")
        print("Cats: \(cats.count)")
        
    }
    
    func setupRealmSwift() {
        // Open the realm with a specific file URL, for example a username
        var config = Realm.Configuration.defaultConfiguration
        config.fileURL!.deleteLastPathComponent()
        config.fileURL!.appendPathComponent("swift")
        realmSwift = try! Realm(configuration: config)
    }
    
    func setupRealmObjc() {
        let config = RLMRealmConfiguration.default()
        config.fileURL!.deleteLastPathComponent()
        config.fileURL!.appendPathComponent("objc")
        realmObjc = try! RLMRealm(configuration: config)
    }

}

