//
//  ViewController.swift
//  CreateAccount
//
//  Created by Hüseyin Kaya on 17.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    let userNameField  = UITextField()
    let userPasswordField = UITextField()
    let userPasswordField2 = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        
        userNameField.borderStyle = .bezel
        userNameField.backgroundColor = .white
        userNameField.placeholder = "username"
        userNameField.frame = CGRect(x: width * 0.1 , y: height*0.10, width: width - width*0.2, height: 50)
        
        view.addSubview(userNameField)
        
       
        userPasswordField.isSecureTextEntry = true
        userPasswordField.borderStyle = .bezel
        userPasswordField.backgroundColor = .white
        userPasswordField.placeholder = "password"
        userPasswordField.frame = CGRect(x: width * 0.1, y: height*0.20, width: width - width*0.2, height: 50)
        
        view.addSubview(userPasswordField)
    
        
        userPasswordField2.isSecureTextEntry = true
        userPasswordField2.borderStyle = .bezel
        userPasswordField2.backgroundColor = .white
        userPasswordField2.placeholder = "password again"
        userPasswordField2.frame = CGRect(x: width * 0.1, y: height*0.30, width: width - width*0.2, height: 50)
        
        view.addSubview(userPasswordField2)
        
     
        let signupButton = UIButton()
        signupButton.setTitle("Signup", for: .normal)
        signupButton.setTitleColor(.blue, for: .normal)
        signupButton.frame = CGRect(x: width * 0.1, y: height * 0.40, width: width - width * 0.2 , height: 50)
        signupButton.addTarget(self, action: #selector(pressed), for: .touchUpInside) // EVENT HANDLER
        
        view.addSubview(signupButton)
        
        
    }
    @objc func pressed() {
        if userNameField.text == ""{
                     message(title: "Error", message: "Username not found")
                 } else if userPasswordField.text == ""{
                     message(title: "Error", message: "Password not found")
                 } else if userPasswordField.text  != userPasswordField2.text{
                     message(title: "Error", message: "Passwords do not match")
                 }   else {
                     message(title: "Success", message: "Account Created successfully")
                     
                 }
        
    }
    
    func message(title:String, message: String){
        let alert = UIAlertController(title: "\(title)", message: "\(message)" , preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }


}

