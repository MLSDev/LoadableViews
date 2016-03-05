//
//  LoadableView.swift
//  LoadableView
//
//  Created by Denys Telezhkin on 05.03.16.
//  Copyright © 2016 Denys Telezhkin. All rights reserved.
//

import Foundation
import UIKit

public protocol NibDefinable {
    var nibName: String { get }
}

extension NibDefinable {
    public var nibName : String {
        return String(self.dynamicType)
    }
}

@IBDesignable public class LoadableView: UIView, NibDefinable {
    
    @IBOutlet public weak var view : UIView!
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        xibSetup()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        xibSetup()
    }
    
    public func xibSetup() {
        view = loadViewFromXib()
        view.frame = bounds
        view.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
        addSubview(view)
    }
    
    func loadViewFromXib() -> UIView {
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil).first as! UIView
        return view
    }
}