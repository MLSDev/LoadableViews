//
//  WTFCatView.swift
//  LoadableView
//
//  Created by Denys Telezhkin on 05.03.16.
//  Copyright © 2018 Denys Telezhkin. All rights reserved.
//

import UIKit
import LoadableViews

@IBDesignable class WTFCatView: LoadableView {

    @IBInspectable var catBackgroundColor: UIColor! {
        didSet {
            backgroundColor = catBackgroundColor
        }
    }

}
