//
//  Keyboard.swift
//  ReusableUIView
//
//  Created by Admin on 07/03/17.
//  Copyright © 2017 Test. All rights reserved.
//

import UIKit

class Keyboard: UIView {

    @IBOutlet var view: UIView!

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    NSBundle.mainBundle().loadNibNamed("Keyboard", owner: self, options: nil)
        
        self.addSubview(self.view)
    }
}
