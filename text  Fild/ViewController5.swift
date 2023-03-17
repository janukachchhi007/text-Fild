//
//  ViewController5.swift
//  text  Fild
//
//  Created by R94 on 04/02/23.
//

import UIKit

class ViewController5: UIViewController {

    @IBOutlet weak var passwordTextfild: UITextField!
    @IBOutlet weak var passwordLabel: UILabel!
    @IBOutlet var userNameTextfild: UIView!
    @IBOutlet weak var userNameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func forgetpasswordaction(_ sender: UIButton) {
        naviget()
    }
    @IBAction func loginAction(_ sender: UIButton) {
        naviget1()

    }
    func showalert(tital:String)
    {
        let alert = UIAlertController(title: "Error", message: tital, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }

    
    @IBOutlet weak var logoimg: UIImageView!
    func naviget()
    {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController3")as! ViewController3; navigationController?.pushViewController(navigation, animated: true)
    }
    func naviget1()
    {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController6")as! ViewController6; navigationController?.pushViewController(navigation, animated: true)
    }
    
}
