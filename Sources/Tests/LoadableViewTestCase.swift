//
//  LoadableViewTestCase.swift
//  LoadableView
//
//  Created by Denys Telezhkin on 05.03.16.
//  Copyright © 2018 Denys Telezhkin. All rights reserved.
//

import XCTest
import LoadableViews

#if os(iOS)

class iOSTestableView : LoadableView {
    @IBOutlet var label : UILabel!
}

class RenamedView : LoadableView {
    @IBOutlet var label: UILabel!
    
    override var nibName : String {
        return "iOSTestableView"
    }
}

class RebundledView: LoadableView {
    override var bundle: Bundle {
        guard let url = Bundle(for: type(of: self)).url(forResource: "CustomBundle", withExtension: "bundle") else {
            return .main
        }
        return Bundle(url: url) ?? .main
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
    
    func testLoadableControlIsSupported() {
        let control = TextFieldView()
        
        XCTAssertNotNil(control.textField)
    }
    
    func testLoadableViewDoesNotHaveAFrame() {
        let view = iOSTestableView()
        XCTAssertEqual(view.frame, .zero)
    }
    
    func testLoadableViewCanCalculateItsFrameUsingCompressedOrExpandedLayout() {
        let compact = iOSTestableView().compressedLayout()
        let expanded = iOSTestableView().expandedLayout()
        let system = iOSTestableView().systemLayout(fittingSize: UIView.layoutFittingCompressedSize,
                                                    horizontalPriority: UILayoutPriority.fittingSizeLevel,
                                                    verticalPriority: UILayoutPriority.fittingSizeLevel)
        XCTAssertNotEqual(compact.frame, .zero)
        XCTAssertNotEqual(expanded.frame, .zero)
        XCTAssertNotEqual(system.frame, .zero)
    }
    
    func testBundleIsOverridable() {
        XCTAssertNotEqual(iOSTestableView().bundle, RebundledView().bundle)
        XCTAssertNotNil(iOSTestableView())
        XCTAssertNotNil(RebundledView())
    }
}

class LoadableViewSetupNibTestCase : XCTestCase {
    
    class OverridedView : LoadableView {
        var overrided: Bool = false
        
        override func setupNib() {
            super.setupNib()
            overrided = true
        }
    }
    
    func testThatSetupNibCanBeOverridedInLoadableViewSubclass() {
        XCTAssert(OverridedView().overrided)
    }
}

#endif

#if !targetEnvironment(macCatalyst) && canImport(AppKit)
import AppKit
class macOSTestableView : LoadableView {
    @IBOutlet weak var textField: NSTextField!
}

class AppKitLoadableViewTestCase: XCTestCase {
    func testmacOSViewLoading() {
        let view = macOSTestableView()
        
        XCTAssertNotNil(view.textField)
    }
}
#endif
