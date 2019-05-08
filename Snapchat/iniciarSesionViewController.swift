//
//  ViewController.swift
//  Snapchat
//
//  Created by Macintosh on 5/7/19.
//  Copyright © 2019 deah. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth

class iniciarSesionViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func IniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            print("Intentando Iniciar Sesion")
            if error != nil{
                print("Se presento el siguient error: \(error)")
            }else{
                print("Inicio de sesion exitoso")
            }
        }
    }
}
