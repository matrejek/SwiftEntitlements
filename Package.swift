// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftEntitlements",
    products: [ .library( name: "SwiftEntitlements", targets: ["SwiftEntitlements"])],
    dependencies: [],
    targets: [ .target( name: "SwiftEntitlements", dependencies: []),
               .testTarget(name: "SwiftEntitlementsTests", dependencies: ["SwiftEntitlements"]),
    ]
)
