//
//  CircleButton.swift
//  ReusableUIView
//
//  Created by RTS on 3/7/17.
//  Copyright © 2017 Test. All rights reserved.
//

import UIKit

class CircleButton: UIButton  {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setupButtonStyle()
    }
    
    override func awakeFromNib() {
        
        self.setupButtonStyle()
    }
    
    
    func setupButtonStyle() {
        
        self.layer.backgroundColor = UIColor.clearColor().CGColor
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.redColor().CGColor
        self.layer.cornerRadius = self.layer.bounds.width / 2
        
        self.setTitleColor(UIColor.redColor(), forState: UIControlState.Normal)
        
        self.setTitleColor(UIColor.redColor(), forState: UIControlState.Highlighted)
    }
    
    
    override var highlighted: Bool {
        didSet {
            if (highlighted) {
                self.layer.backgroundColor = UIColor.whiteColor().CGColor
                
            }
            else {
                self.layer.backgroundColor = UIColor.clearColor().CGColor
            }
            
        }
    }
}
