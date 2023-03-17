//
//  viewcontroller2.swift
//  text  Fild
//
//  Created by R94 on 21/01/23.
//

import UIKit

class viewcontroller2: UIViewController {

    @IBOutlet weak var dontAccountLabel: UILabel!
    @IBOutlet weak var YourNameLabel: UILabel!
    
    @IBOutlet weak var forgetPasswordButton: UIButton!
    
    @IBOutlet weak var password: UITextField!
    weak var nameTextField: UITextField!
  
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    func showalert(tital:String)
    {
        let alert = UIAlertController(title: "Error", message: tital, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    

    @IBAction func signUpButton(_ sender: UIButton) {
        naviget1()
    }
    @IBAction func forgetPasswordAction(_ sender:UIButton) {
        naviget()
    }
    
    func naviget()
    {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController3")as! ViewController3; navigationController?.pushViewController(navigation, animated: true)
    }
    func naviget1()
    {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController6")as! ViewController6; navigationController?.pushViewController(navigation, animated: true)
    }
    
    @IBOutlet weak var img: UIImageView!
}
