//
//  TextFieldView.swift
//  LoadableViewsTests
//
//  Created by Denys Telezhkin on 05.01.2018.
//  Copyright © 2018 Denys Telezhkin. All rights reserved.
//

#if canImport(UIKit)
import UIKit
import LoadableViews

@IBDesignable class TextFieldView: LoadableControl {
    @IBOutlet weak var textField: UITextField!
    
    override func becomeFirstResponder() -> Bool {
        return textField.becomeFirstResponder()
    }
    
    override func resignFirstResponder() -> Bool {
        return textField.resignFirstResponder()
    }
}
#endif
