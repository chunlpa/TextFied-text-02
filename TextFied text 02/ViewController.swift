//
//  ViewController.swift
//  TextFied text 02
//
//  Created by D7703_08 on 2018. 3. 19..
//  Copyright © 2018년 D7703_08. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var myTextFied: UITextField!
    
    
    @IBOutlet weak var myLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //delrgate 연결
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func buttonPressed(_ sender: Any) {
        
       myLabel.text = myTextFied.text
        myTextFied.text = ""
    }
    //UItextFiedDelegate metrod
    //called when 'return'key pressed. teturn No to ignore
    func textFieldShouldReturn(_ textFIeld: UITextField) -> Bool {
        
        print("I pressed return Key")
        //키패드내림
        myTextFied.resignFirstResponder()
        return true

}

}
