//
//  ViewController3.swift
//  text  Fild
//
//  Created by R94 on 04/01/23.
//

import UIKit

class ViewController3: UIViewController {

    @IBOutlet weak var sendotpButton: UIButton!
    @IBOutlet weak var phoneNUmberTextFild: UITextField!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var ltrubleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
      
    @IBAction func sendotpAction(_ sender: UIButton) {
        if phoneNUmberTextFild.text?.count ?? 0 != 10
        {
            
        }
        else
        {
            showalert(tital: "Enter Your Number ")
        }

        naviget()
    }
    func naviget()
    {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "ViewController4")as! ViewController4; navigationController?.pushViewController(navigation, animated: true)
    }
    func showalert(tital:String)
    {
        let alert = UIAlertController(title: "Error", message: tital, preferredStyle: .alert)
        alert.addAction(UIAlertAction.init(title: "OK", style: .default, handler: nil))
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .default, handler: nil))
        present(alert, animated: true, completion: nil)
    }
    
    @IBOutlet weak var img1: UIImageView!
    
}
