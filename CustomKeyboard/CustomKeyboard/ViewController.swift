//
//  ViewController.swift
//  CustomKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        textField.becomeFirstResponder()
        gif.animationImages = imageArray
        gif.animationDuration = 5
        gif.startAnimating()
        
        resetButton.layer.cornerRadius = 5
        resetButton.layer.borderWidth = 1
        resetButton.layer.borderColor = UIColor.lightGrayColor().CGColor
    }
    @IBOutlet weak var gif: UIImageView!

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func tappedReset(sender: AnyObject) {
        textField.text = ""
    }


}

