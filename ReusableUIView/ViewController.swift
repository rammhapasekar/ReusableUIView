//
//  ViewController.swift
//  ReusableUIView
//
//  Created by Admin on 07/03/17.
//  Copyright © 2017 Test. All rights reserved.
//

import UIKit

class ViewController: UIViewController, KeyBoardDelegate {

    
    @IBOutlet weak var keyBoardView: Keyboard!
    
    @IBOutlet weak var numberLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.keyBoardView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func keyboardBtnTapped(btnNumber: NSInteger) {
        self.numberLbl.text = NSString(format: "%d", btnNumber) as String
    }
}


