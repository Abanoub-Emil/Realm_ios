//
//  ViewController.swift
//  Test
//
//  Created by Mai Hassan on 2/3/19.
//  Copyright © 2019 Mai Hassan. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let realm = try! Realm()
        
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        
        let  myNote = Notes()
        myNote.value = "Testing Realm for first time"
        
        try! realm.write {
            realm.add(myNote)
        }
        
        let savedData = realm.objects(Notes.self)
        print(savedData[0].value)
        
    }


}

