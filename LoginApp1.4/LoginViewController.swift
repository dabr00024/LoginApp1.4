//
//  LoginViewController.swift
//  LoginApp1.4
//
//  Created by ДОБРО on 18.04.2025.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    @IBOutlet var loginButton: UIButton!
    @IBOutlet var forgotNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    private let user = "User"
    private let password = "0000"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let welcomeVC = segue.destination as?
            WelcomeViewController else { return }
            welcomeVC.user = user
        }
                           
    @IBAction func logInButtonTap(){
        guard userNameTF.text == user,
              passwordTF.text == password
        else {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and password")
            return}
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    @IBAction func forgotNameButtonTap() {
        showAlert(title: "Oops!", message: "Your name is \(user) ☠️")}
    
    @IBAction func forgotPasswordButtonTap(){
        showAlert(title: "Oops!", message: "Your password is \(password) ☠️")}
    
    @IBAction func segueAction(segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    private func showAlert(title:String, message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in self.userNameTF.text = ""; self.passwordTF.text = "" }
        alert.addAction(okAction)
        present(alert,animated: true)    }
}

