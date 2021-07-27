// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "mParticle-AppsFlyer",
    platforms: [ .iOS(.v9) ],
    products: [
        .library(
            name: "mParticle-AppsFlyer",
            targets: ["mParticle-AppsFlyer"]),
    ],
    dependencies: [
      .package(name: "mParticle-Apple-SDK",
               url: "https://github.com/mParticle/mparticle-apple-sdk",
               .upToNextMajor(from: "8.0.0")),
    ],
    targets: [
        .target(
            name: "mParticle-AppsFlyer",
            dependencies: [
              .byName(name: "mParticle-Apple-SDK"),
              .byName(name: "AppsFlyerLib")
            ]
        ),
        .binaryTarget(name: "AppsFlyerLib", path: "AppsFlyerLib.xcframework")
    ]
)
