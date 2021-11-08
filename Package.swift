// swift-tools-version:5.3

import PackageDescription

let package = Package(
	name: "XS2AiOS",
	defaultLocalization: "de",
	platforms: [
		.iOS(.v11)
	],
	products: [
		.library(
			name: "XS2AiOS",
			targets: ["XS2AiOS", "XS2AiOSNetService"]),
	],
	dependencies: [
		.package(url: "https://github.com/SwiftyJSON/SwiftyJSON.git", from: "5.0.1"),
		.package(url: "https://github.com/ninjaprox/NVActivityIndicatorView.git", from: "5.1.1"),
	],
	targets: [
		.target(
			name: "XS2AiOS",
			dependencies: ["SwiftyJSON", "NVActivityIndicatorView"],
			resources: [
				.process("Resources")
			]
		),
		.testTarget(
			name: "XS2AiOSTests",
			dependencies: ["XS2AiOS"]
		),
		.binaryTarget(name: "XS2AiOSNetService", path: "XS2AiOSNetService.xcframework"),
	],
	swiftLanguageVersions: [SwiftVersion.v5]
)
