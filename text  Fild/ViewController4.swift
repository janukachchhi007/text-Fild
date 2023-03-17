//
//  ViewController4.swift
//  text  Fild
//
//  Created by R94 on 04/02/23.
//

import UIKit

class ViewController4: UIViewController {

    @IBOutlet weak var continueBUtton: UIButton!
    @IBOutlet weak var otpTextFild: UITextField!
    @IBOutlet weak var otpSendToLabel: UILabel!
    @IBOutlet weak var verifyphoneLabel: UILabel!
    @IBOutlet weak var lrequestLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    

   
    @IBAction func continueButton(_ sender: UIButton) {
        naviget()
    }
    
    func naviget()
    {
        let navigation = storyboard?.instantiateViewController(withIdentifier: "viewcontroller2")as! viewcontroller2; navigationController?.pushViewController(navigation, animated: true)
    }
    
}
