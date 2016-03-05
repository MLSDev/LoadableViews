//
//  LoadableView.swift
//  LoadableView
//
//  Created by Denys Telezhkin on 05.03.16.
//  Copyright © 2016 MLSDev Inc(https://mlsdev.com).
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation
import UIKit

public protocol NibLoadableProtocol : NSObjectProtocol {
    var nibContainerView: UIView { get }
    func loadNib() -> UIView
    var nibName : String { get }
}

extension UIView {
    public var nibContainerView : UIView { return self }
    public var nibName : String { return String(self.dynamicType) }
}

extension NibLoadableProtocol {
    public func loadNib() -> UIView {
        let bundle = NSBundle(forClass: self.dynamicType)
        let nib = UINib(nibName: nibName, bundle: bundle)
        let view = nib.instantiateWithOwner(self, options: nil).first as! UIView
        return view
    }
    
    public func setupNib() {
        let view = loadNib()
        nibContainerView.backgroundColor = .clearColor()
        nibContainerView.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        let bindings = ["view": view]
        nibContainerView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|[view]|", options:[], metrics:nil, views: bindings))
        nibContainerView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|[view]|", options:[], metrics:nil, views: bindings))
    }
}

public class LoadableView: UIView, NibLoadableProtocol {

    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupNib()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupNib()
    }
}

public class LoadableTableViewCell: UITableViewCell, NibLoadableProtocol {
    public override var nibContainerView: UIView {
        return contentView
    }
    
    override public init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupNib()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupNib()
    }
}

public class LoadableCollectionReusableView: UICollectionReusableView, NibLoadableProtocol {
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupNib()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupNib()
    }
}

public class LoadableCollectionViewCell: UICollectionViewCell, NibLoadableProtocol {
    public override var nibContainerView: UIView {
        return contentView
    }
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupNib()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupNib()
    }
}

public class LoadableTextField: UITextField, NibLoadableProtocol {
    
    override public init(frame: CGRect) {
        super.init(frame: frame)
        setupNib()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupNib()
    }
}