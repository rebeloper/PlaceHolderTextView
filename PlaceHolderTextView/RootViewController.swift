//
//  RootViewController.swift
//  PlaceHolderTextView
//
//  Created by Alex Nagy on 27/02/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import UIKit
import TinyConstraints
import KMPlaceholderTextView

class RootViewController: UIViewController {
    
    lazy var textField: UITextField = {
        let tf = UITextField()
        tf.layer.cornerRadius = 8
        tf.layer.borderWidth = 1.5
        tf.layer.borderColor = UIColor.lightGray.cgColor
        tf.placeholder = "I am a UITextField"
        return tf
    }()
    
    lazy var textView: KMPlaceholderTextView = {
        let tv = KMPlaceholderTextView()
        tv.layer.cornerRadius = 8
        tv.layer.borderWidth = 1.5
        tv.layer.borderColor = UIColor.lightGray.cgColor
        tv.font = UIFont.systemFont(ofSize: 16)
        tv.placeholder = "I am a UITextView"
        return tv
    }()
    
    lazy var customTextField: CustomTextField = {
        let tf = CustomTextField()
        tf.layer.cornerRadius = 8
        tf.layer.borderWidth = 1.5
        tf.layer.borderColor = UIColor.lightGray.cgColor
        tf.placeholder = "I am a Custom UITextField"
        return tf
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = .white
        
        view.addSubview(textField)
        view.addSubview(textView)
        view.addSubview(customTextField)
        
        textField.edgesToSuperview(excluding: .bottom, insets: .top(36) + .left(12) + .right(12), usingSafeArea: true)
        textField.height(40)
        
        textView.topToBottom(of: textField, offset: 12)
        textView.leftToSuperview(offset: 12, usingSafeArea: true)
        textView.rightToSuperview(offset: -12, usingSafeArea: true)
        textView.height(120)
        
        customTextField.topToBottom(of: textView, offset: 12)
        customTextField.leftToSuperview(offset: 12, usingSafeArea: true)
        customTextField.rightToSuperview(offset: -12, usingSafeArea: true)
        customTextField.height(40)
    }


}

