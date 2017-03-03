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
        //Deslogar usuario
        
        /*
        do{
            try FIRAuth.auth()?.signOut()
        }catch let erro as NSError{
            print(erro.description)
        }
        */
        
        FIRAuth.auth()?.signIn(withEmail: "brocoyou@icloud.com", password: "866886", completion: { (usuario, erro) in
            if erro == nil {
                print("Sucesso ao Logar usuario")
            }else {
                print("Erro ao logar: \(erro?.localizedDescription)")
            }
        })
        
        
        
        //Verifica usuario logado
        FIRAuth.auth()?.addStateDidChangeListener({ (FIRAuth, usuario) in
            if let usuarioLogado = usuario{
                print("Usuario esta logado!! " + String(describing: usuarioLogado.email))
            }else{
                print("Usuario nao esta logado")
            }
        })
        
        
        //        FIRAuth.auth()?.createUser(withEmail: "brocoyou@icloud.com", password: "866886", completion: { (usuario, erro) in
        //
        //            if erro == nil {
        //                print("Sucesso ao cadastrar usuario")
        //            }else {
        //                print("Erro ao cadastrar usuario: \(erro?.localizedDescription)")
        //            }
        //        })
        //
        //
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
        //        let pontuacao = firebase.child("pontuacao")
        //
        //
        //        //Remover item
        //        //pontuacao.removeValue()
        //
        //
        //        //Recuperar dados do Firebase
        //        pontuacao.observe(FIRDataEventType.value, with: {(dados)in
        //           let ponto = dados.value as! String
        //            self.lblText.text = ponto
        //
        //        })
        
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

