//
//  LoadableViewTestCase.swift
//  LoadableView
//
//  Created by Denys Telezhkin on 05.03.16.
//  Copyright © 2016 Denys Telezhkin. All rights reserved.
//

import XCTest
import LoadableViews

class iOSTestableView : LoadableView {
    @IBOutlet var label : UILabel!
}

class RenamedView : LoadableView {
    @IBOutlet var label: UILabel!
    
    override var nibName : String {
        return "iOSTestableView"
    }
}

class LoadableViewTestCase: XCTestCase {

    func testiOSViewLoading() {
        let view = iOSTestableView()
        
        XCTAssertNotNil(view.label)
    }
    
    func testDifferentXibNameIsSupported() {
        let view = RenamedView()
        
        XCTAssertNotNil(view.label)
    }
}

