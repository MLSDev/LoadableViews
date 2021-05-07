Pod::Spec.new do |s|
  s.name         = "LoadableViews"
  s.version      = "3.6.0"
  s.summary      = "Easiest way to load view classes into another XIB or storyboard."
  s.homepage     = "https://github.com/MLSDev/LoadableViews"
  s.screenshots  = "https://github.com/MLSDev/LoadableViews/raw/master/wtf_cat_designable.png"
  s.license      = { type: "MIT", file: "LICENSE" }
  s.author             = { "Denys Telezhkin" => "telezhkin@mlsdev.com" }
  s.social_media_url   = "https://twitter.com/mlsdevcom"
  s.ios.deployment_target = "9.0"
  s.tvos.deployment_target = "9.0"
  s.osx.deployment_target = "10.12"
  s.swift_versions = ['4.0', '4.2', '5.0', '5.1', '5.2', '5.3']
  s.source       = { git: "https://github.com/MLSDev/LoadableViews.git", tag: s.version.to_s }
  s.source_files  = "Sources/LoadableViews/*.swift"
  s.ios.framework  = "UIKit"
  s.tvos.framework = "UIKit"
  s.osx.framework = "AppKit"
end
