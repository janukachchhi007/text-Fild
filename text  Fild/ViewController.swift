//
//  ViewController.swift
//  text  Fild
//
//  Created by R94 on 20/01/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var signInToYourAccountLabel: UILabel!
    
    @IBOutlet weak var loginLabel: UILabel!
    
    @IBOutlet weak var TextFild1: UITextField!
    
    
    @IBOutlet weak var phoneNUmberTextFild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBOutlet weak var image: UIImageView!
    
    @IBAction func loginButton(_ sender: UIButton) {
        naviget2()
    }
    
    @IBAction func continueButtonAction(_ sender: UIButton)
    {
        
        if phoneNUmberTextFild.text?.count ?? 0 != 10
        {
            
        }
        else
        {
            showalert(tital: "Enter Your Number ")
        }

        naviget()
    }
    
    func showalert(tital:String)
    {
        let alert = UIAlertController(title: "Error", message: tital, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    func naviget()
    {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "viewcontroller2")as! viewcontroller2; navigationController?.pushViewController(navigation, animated: true)
    }
    func naviget2()
    {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController5")as! ViewController5; navigationController?.pushViewController(navigation, animated: true)
    }
}

