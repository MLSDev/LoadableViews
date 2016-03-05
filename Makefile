SHELL := /bin/bash
# Install Tasks

install-iOS:
	true

install-tvOS:
	true

install-carthage:
	brew rm carthage || true
	brew install carthage

install-coverage:
	true

# Run Tasks

test-iOS:
	set -o pipefail && \
		xcodebuild \
		-project LoadableViews.xcodeproj \
		-scheme LoadableViews \
		-destination "name=iPhone 6s" \
		clean test \
		| xcpretty -ct

test-tvOS:
	set -o pipefail && \
		xcodebuild \
		-project LoadableViews.xcodeproj \
		-scheme LoadableViews \
		-destination "name=Apple TV 1080p" \
		clean test \
		| xcpretty -ct

test-carthage:
	carthage build --no-skip-current
	ls Carthage/build/iOS/LoadableViews.framework
	ls Carthage/build/tvOS/LoadableViews.framework

test-coverage:
	  set -o pipefail && xcodebuild -project LoadableViews.xcodeproj -scheme LoadableViews -enableCodeCoverage YES -destination "name=iPhone 6s" test | xcpretty -ct
		bash <(curl -s https://codecov.io/bash)
