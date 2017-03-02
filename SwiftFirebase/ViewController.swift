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
    
    @IBOutlet weak var lblText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FIRAuth.auth()?.createUser(withEmail: <#T##String#>, password: <#T##String#>, completion: <#T##FIRAuthResultCallback?##FIRAuthResultCallback?##(FIRUser?, Error?) -> Void#>)
        
        
        
        
        /*
        // Do any additional setup after loading the view, typically from a nib.
        
        let pontuacao = firebase.child("pontuacao")
        
        
        //Remover item
        //pontuacao.removeValue()
        
        
        //Recuperar dados do Firebase
        pontuacao.observe(FIRDataEventType.value, with: {(dados)in
           let ponto = dados.value as! String
            self.lblText.text = ponto
        
        })
        
    */
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

