Pod::Spec.new do |s|
  s.name         = "LoadingViews"
  s.version      = "1.0.0"
  s.summary      = "Easiest way to load view classes into another XIB or storyboard."
  s.homepage     = "https://github.com/MLSDev/LoadableViews"
  s.screenshots  = "https://github.com/MLSDev/LoadableViews/raw/master/wtf_cat_designable.png"
  s.license      = { type: "MIT", file: "LICENSE" }
  s.author             = { "Denys Telezhkin" => "telezhkin@mlsdev.com" }
  s.social_media_url   = "https://twitter.com/mlsdevcom"
  s.ios.deployment_target = "8.0"
  s.tvos.deployment_target = "9.0"
  s.source       = { git: "https://github.com/MLSDev/LoadableViews", tag: s.version.to_s }
  s.source_files  = "Source/*"
  s.framework  = "UIKit"
end
