// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "HyperPayPal",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "HyperPayPal",
            targets: ["HyperPayPal", "PPRiskMagnes"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "HyperPayPal",
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.9.8/HyperPayPal.zip",
            checksum: "2936199a44e918947bde0c29840d0ecc98dc800be04fc6b8f517bffcab4d61ce"
        ),
        .binaryTarget(
            name: "PPRiskMagnes",
            path: "./PPRiskMagnes.xcframework"
        )
    ]
)