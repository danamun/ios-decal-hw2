//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit


class KeyboardViewController: UIInputViewController {
    var keyboardView: UIView!
    
    // Keyboard Buttons
    @IBOutlet var nextKeyboardButton: UIButton!
    @IBOutlet weak var deleteKeyboardButton: UIButton!
    @IBOutlet weak var returnKeyboardButton: UIButton!

    @IBOutlet weak var spaceKeyboardButton: UIButton!
    @IBOutlet weak var quote1KeyboardButton: UIButton!
    @IBOutlet weak var quote2KeyboardButton: UIButton!
    @IBOutlet weak var quote3KeyboardButton: UIButton!
    @IBOutlet weak var quote4KeyboardButton: UIButton!
    @IBOutlet weak var quote5KeyboardButton: UIButton!
    @IBOutlet weak var quote6KeyboardButton: UIButton!
    @IBOutlet weak var quote7KeyboardButton: UIButton!
    @IBOutlet weak var quote8KeyboardButton: UIButton!
    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
        
        nextKeyboardButton.layer.cornerRadius = 5
        spaceKeyboardButton.layer.cornerRadius = 5
        deleteKeyboardButton.layer.cornerRadius = 5
        returnKeyboardButton.layer.cornerRadius = 5
        
        quote1KeyboardButton.layer.cornerRadius = 5
        quote2KeyboardButton.layer.cornerRadius = 5
        quote3KeyboardButton.layer.cornerRadius = 5
        quote4KeyboardButton.layer.cornerRadius = 5
        quote5KeyboardButton.layer.cornerRadius = 5
        quote6KeyboardButton.layer.cornerRadius = 5
        quote7KeyboardButton.layer.cornerRadius = 5
        quote8KeyboardButton.layer.cornerRadius = 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        spaceKeyboardButton.addTarget(self, action: "tappedSpace", forControlEvents: .TouchUpInside)
        deleteKeyboardButton.addTarget(self, action: "tappedDelete", forControlEvents: .TouchUpInside)
        returnKeyboardButton.addTarget(self, action: "tappedReturn", forControlEvents: .TouchUpInside)
        quote1KeyboardButton.addTarget(self, action: "quote1", forControlEvents: .TouchUpInside)
        quote2KeyboardButton.addTarget(self, action: "quote2", forControlEvents: .TouchUpInside)
        quote3KeyboardButton.addTarget(self, action: "quote3", forControlEvents: .TouchUpInside)
        quote4KeyboardButton.addTarget(self, action: "quote4", forControlEvents: .TouchUpInside)
        quote5KeyboardButton.addTarget(self, action: "quote5", forControlEvents: .TouchUpInside)
        quote6KeyboardButton.addTarget(self, action: "quote6", forControlEvents: .TouchUpInside)
        quote7KeyboardButton.addTarget(self, action: "quote7", forControlEvents: .TouchUpInside)
        quote8KeyboardButton.addTarget(self, action: "quote8", forControlEvents: .TouchUpInside)
    }
    
    func tappedSpace() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText(" ")
    }
    
    func tappedDelete() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.deleteBackward()
    }
    
    func tappedReturn() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("\n")
    }
    
    func quote1() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("May the Force be with you.")
    }
    
    func quote2() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("Judge me by my size, do you?")
    }
    
    func quote3() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("The force is strong with this one.")
    }
    
    func quote4() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("I won’t fail you. I’m not afraid.")
    }
    
    func quote5() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("I am your father.")
    }
    
    func quote6() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("When I left you, I was but the learner; now I am the master.")
    }
    
    func quote7() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("“A long time ago in a galaxy far, far away…”")
    }
    
    func quote8() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("Use the force, Luke.")
    }


}
