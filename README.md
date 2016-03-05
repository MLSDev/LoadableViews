![Build Status](https://travis-ci.org/MLSDev/LoadableViews.svg?branch=master) &nbsp;
[![codecov.io](http://codecov.io/github/MLSDev/LoadableViews/coverage.svg?branch=master)](http://codecov.io/github/MLSDev/LoadableViews?branch=master)
![CocoaPod platform](https://cocoapod-badges.herokuapp.com/p/LoadableViews/badge.png) &nbsp;
![CocoaPod version](https://cocoapod-badges.herokuapp.com/v/LoadableViews/badge.png) &nbsp;
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Packagist](https://img.shields.io/packagist/l/doctrine/orm.svg)]()

# LoadableViews

Easiest way to load view classes into another XIB or storyboard.

![WTFCat](wtf_cat_designable.png)

## Setup

* Subclass your view from LoadableView
* Create a xib file, set File's Owner class to your class
* Link outlets as usual

## Usage

* Drop UIView to your XIB or storyboard
* Set it's class to your class name

Your view is automatically loaded to different xib!

## IBInspectable && IBDesignable

IBInspectables automatically render themselves if your view is IBDesignable. Usually Interface Builder is not able to automatically figure out that your view is IBInspectable, so you need to add this attribute to your view subclass:

```swift
  @IBDesignable class WTFCatView: LoadableView
```

## UI classes supported

- [x] UIView
- [x] UITableViewCell
- [x] UICollectionViewCell
- [x] UICollectionReusableView

## Requirements

* iOS 8+
* tvOS 9.0+

## Installation

#### CocoaPods

```ruby
  pod 'LoadableViews', '~> 1.0.0'
```

#### Carthage

```ruby
  carthage 'MLSDev/LoadableViews' "1.0.0"
```

## License

`LoadableView` is released under the MIT license. See LICENSE for details.

## About MLSDev

[<img src="https://github.com/MLSDev/development-standards/raw/master/mlsdev-logo.png" alt="MLSDev.com">][mlsdev]

`LoadableView` is maintained by MLSDev, Inc. We specialize in providing all-in-one solution in mobile and web development. Our team follows Lean principles and works according to agile methodologies to deliver the best results reducing the budget for development and its timeline.

Find out more [here][mlsdev] and don't hesitate to [contact us][contact]!

[mlsdev]: http://mlsdev.com
[contact]: http://mlsdev.com/contact_us
