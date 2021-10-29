//
//  ViewController.swift
//  Snapchat
//
//  Created by Mac 11 on 10/28/21.
//  Copyright © 2021 Empresa. All rights reserved.
//
import UIKit
import Firebase
import FirebaseAuth

class iniciarSesionViewController: UIViewController {
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        btnLogin.layer.cornerRadius = 10.0
        // Do any additional setup after loading the view.
    }
    
    @IBAction func iniciarSesionTapped(_ sender: Any) {
        Auth.auth().signIn(withEmail: emailTextField.text!, password:  passwordTextField.text!) { (user, error) in
            print("Intentando Iniciar Sesion")
            if error != nil{
                print("Se preesento el seguiente error: \(error)")
            }else{
                print("Inicio Sesion exitoso")
            }
            
        }
    }
    

}
//romulo@gmail.com
//romulo1234

