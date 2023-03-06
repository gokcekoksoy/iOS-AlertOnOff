//
//  ViewController.swift
//  AlertOnOff
//
//  Created by Gökçe Köksoy on 6.03.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var usernameLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    @IBOutlet weak var repaswordLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signupButton(_ sender: Any) {
       /*
        let alert = UIAlertController(title: "Error!", message: "Please Enter a Username.", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Okay", style: UIAlertAction.Style.cancel) { UIAlertAction in
            print("tapped")
        }
        alert .addAction(okButton)
        self.present(alert, animated: true, completion: nil) */
        
        if usernameLabel.text == ""{
            makeAlert(titleInput: "Error", messageInput: "Please enter a username.")
        } else if passwordLabel.text == ""{
            makeAlert(titleInput: "Error", messageInput: "Please enter a password.")
        } else if passwordLabel.text != repaswordLabel.text {
            makeAlert(titleInput: "Error", messageInput: "Passwords do not match.")
        } else {
            makeAlert(titleInput: "Success", messageInput: "You signed up successfully.")
        }
    }
    
    func makeAlert (titleInput: String, messageInput: String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "Okay", style: UIAlertAction.Style.cancel, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true, completion: nil)
    }
    
}

