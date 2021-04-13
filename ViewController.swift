//
//  ViewController.swift
//  SpikeballApp
//
//  Created by Andrew Varghese on 8/8/20.
//  Copyright © 2020 Andrew Varghese. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        field1.delegate=self
        field2.delegate=self
        field3.delegate=self
        field4.delegate=self
    }
    
    var Player1Text = ""
    var Player2Text = ""
    var Player3Text = ""
    var Player4Text = ""
    
    @IBAction func didTapButton() {
        
        self.Player1Text = field1.text!
        self.Player2Text = field2.text!
        self.Player3Text = field3.text!
        self.Player4Text = field4.text!
        performSegue(withIdentifier: "name", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! GameScreenViewController
        vc.label1name = self.Player1Text
        vc.label2name = self.Player2Text
        vc.label3name = self.Player3Text
        vc.label4name = self.Player4Text
    }
    
    
    @IBOutlet weak var field1: UITextField!
    
    @IBOutlet var field2: UITextField!
    
    @IBOutlet var field3: UITextField!
    
    @IBOutlet var field4: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
      field1.resignFirstResponder()
        field2.resignFirstResponder()
        field3.resignFirstResponder()
        field4.resignFirstResponder()
      return true;
    }

    //textfield func for the touch on BG
    func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
      field1.resignFirstResponder()
        field2.resignFirstResponder()
        field3.resignFirstResponder()
        field4.resignFirstResponder()
      self.view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
      super.didReceiveMemoryWarning()
      //dispose of any resources that can be recreated
    }
    
    
    
    
    
}

