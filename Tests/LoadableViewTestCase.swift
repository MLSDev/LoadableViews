//
//  LoadableViewTestCase.swift
//  LoadableView
//
//  Created by Denys Telezhkin on 05.03.16.
//  Copyright © 2016 Denys Telezhkin. All rights reserved.
//

import XCTest
import LoadableView

class iOSTestableView : LoadableView {
    @IBOutlet var label : UILabel!
}

class LoadableViewTestCase: XCTestCase {

    func testiOSViewLoading() {
        let view = iOSTestableView()
        
        XCTAssertNotNil(view.label)
    }
}

