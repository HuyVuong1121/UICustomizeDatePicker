//
//  UICustomizeDatePicker.swift
//  PickDate
//
//  Created by Cristiano Alves on 28/09/15.
//  Copyright © 2015 Cristiano Alves. All rights reserved.
//

import UIKit

class UICustomizeDatePicker: UIDatePicker {
    
    @IBInspectable var colorOfText : UIColor = UIColor.blackColor() {
        didSet {
            self.setValue(colorOfText, forKeyPath: "textColor")
                       
            let selector:Selector = NSSelectorFromString("setHighlightsToday:")
            
            
            dispatch_after(0, dispatch_get_main_queue(), {
                NSThread.detachNewThreadSelector(selector, toTarget:self, withObject: false)
            })
            
        }
    }
    
    @IBInspectable var textAlpha : CGFloat = 0.8 {
        didSet {
            self.setValue(textAlpha, forKeyPath: "alpha")
            
        }
    }

}
