//
//  Keyboard.swift
//  ReusableUIView
//
//  Created by Admin on 07/03/17.
//  Copyright © 2017 Test. All rights reserved.
//

import UIKit

class Keyboard: UIView {
    
    var delegate: KeyBoardDelegate?

    @IBOutlet var view: UIView!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    NSBundle.mainBundle().loadNibNamed("Keyboard", owner: self, options: nil)
        
        self.addSubview(self.view)
    }
    
    @IBAction func btnTapped(sender: AnyObject) {
    
        let btnTag = sender.tag
        self.delegate?.keyboardBtnTapped(btnTag)
    }
    
}

protocol KeyBoardDelegate: class{
    
    func keyboardBtnTapped(btnNumber: NSInteger)
}