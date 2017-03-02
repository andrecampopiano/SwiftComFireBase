//
//  ViewController.swift
//  SwiftFirebase
//
//  Created by André Luís  Campopiano on 02/03/17.
//  Copyright © 2017 André Luís  Campopiano. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    let firebase = FIRDatabase.database().reference()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        firebase.child("pontuacao").setValue("100")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

