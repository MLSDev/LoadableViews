//
//  WTFCatView.swift
//  LoadableView
//
//  Created by Denys Telezhkin on 05.03.16.
//  Copyright © 2016 Denys Telezhkin. All rights reserved.
//

import UIKit
import LoadableView

@IBDesignable class WTFCatView: LoadableView {

    @IBInspectable var catBackgroundColor: UIColor! {
        didSet {
            backgroundColor = catBackgroundColor
        }
    }

}
