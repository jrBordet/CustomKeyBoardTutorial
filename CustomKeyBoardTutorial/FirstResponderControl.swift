//
//  FirstResponderControl.swift
//  CustomKeyBoardTutorial
//
//  Created by Jean Raphael on 12/02/2018.
//  Copyright © 2018 Jean Raphael Bordet. All rights reserved.
//

import UIKit

class FirstResponderControl: UIControl
{
    override var canBecomeFirstResponder: Bool
    {
        return true
    }
    
    private var _inputView: UIView?
    override var inputView: UIView? {
        get {
            return _inputView
        }
        set {
            _inputView = newValue
        }
    }
}
