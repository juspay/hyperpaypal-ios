// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "HyperPayPal",
    platforms: [
        .iOS(.v12)
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
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.4.16/HyperPayPal.zip",
            checksum: "191784740530be3a50c2935237e1122f85e4d529126be4c7e7d022fa1a6828bb"
        ),
        .binaryTarget(
            name: "PPRiskMagnes",
            path: "./PPRiskMagnes.xcframework"
        )
    ]
)