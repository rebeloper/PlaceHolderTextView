//
//  CustomTextField.swift
//  PlaceHolderTextView
//
//  Created by Alex Nagy on 27/02/2019.
//  Copyright © 2019 Alex Nagy. All rights reserved.
//

import UIKit

class CustomTextField: UITextField {
    
    let insets: UIEdgeInsets
    
    init(insets: UIEdgeInsets = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 12)) {
        self.insets = insets
        super.init(frame: .zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: insets)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: insets)
    }
    
}
