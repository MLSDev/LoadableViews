//
//  WTFCatViewMac.swift
//  Example-Mac
//
//  Created by Denys Telezhkin on 07.05.2021.
//  Copyright © 2021 Denys Telezhkin. All rights reserved.
//

import Foundation
import AppKit
import LoadableViews

@IBDesignable class WTFCatViewMac: LoadableView {
    @IBInspectable var catBackgroundColor: NSColor! {
        didSet {
            wantsLayer = true
            layer?.backgroundColor = catBackgroundColor.cgColor
        }
    }
}
