# Change Log
All notable changes to this project will be documented in this file.

# Next

* Support for Swift 4.2 and Xcode 10.

## [3.0.0](https://github.com/MLSDev/LoadableViews/releases/tag/3.0.0)

* LoadableView no longer sets 'translatesAutoresizingMasksIntoConstraints' property on container view to false. If you plan to use LoadableView without superview, consider turning this property to false manually, because without a container view it will not be able to compute it's size. 

## [2.3.0](https://github.com/MLSDev/LoadableViews/releases/tag/2.3.0)

* Added `LoadableControl` to allow LoadableView subclasses to have UIControl properties and methods.

## [2.2.1](https://github.com/MLSDev/LoadableViews/releases/tag/2.2.1)

* Updated for Xcode 9.1 / Swift 4.0.2

## [2.2.0](https://github.com/MLSDev/LoadableViews/releases/tag/2.2.0)

* Support for Swift 3.2 and Swift 4.0

## [2.1.0](https://github.com/MLSDev/LoadableViews/releases/tag/2.1.0)

* Container view no longer translates it's autoresizing mask into constraints, thus allowing self-sizing mechanics for `LoadableView`.

## [2.0.2](https://github.com/MLSDev/LoadableViews/releases/tag/2.0.2)

* Improved CI and automation scripts

## [2.0.1](https://github.com/MLSDev/LoadableViews/releases/tag/2.0.1)

* Open up `NibLoadableProtocol` extension API to allow using `NibLoadableProtocol` methods with custom classes

## [2.0.0](https://github.com/MLSDev/LoadableViews/releases/tag/2.0.0)

Swift 3 release!

## [1.0.1](https://github.com/MLSDev/LoadableViews/releases/tag/1.0.1)

# Changed

Allows `setupNib()` method to be overrided in subclasses.

## [1.0.0](https://github.com/MLSDev/LoadableViews/releases/tag/1.0.0)

Initial OSS release, yaaaay!
