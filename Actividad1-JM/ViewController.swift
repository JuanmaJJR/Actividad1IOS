//
//  ViewController.swift
//  Actividad1-JM
//
//  Created by JUAN MARÍA JUSUE ROYAN on 14/3/17.
//  Copyright © 2017 JUAN MARÍA JUSUE ROYAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var nameTextField: UITextField?
    @IBOutlet var passTextField: UITextField?
    @IBOutlet var txter: UITextView?
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func LoginButton() {
        if (nameTextField?.text==DataHolder.sharedInstance.Usuario) && (passTextField?.text==DataHolder.sharedInstance.Pass){
             self.performSegue(withIdentifier:"tran1", sender: self)
        }
        else{
            txter?.text="Usuario o contraseña no existe"
        }
    }
    
    
}
