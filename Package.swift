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
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.8/HyperPayPal.zip",
            checksum: "0258780d7349b119124a6d715d3ca5992af93fb5deb6c9baf644add2385c4a17"
        ),
        .binaryTarget(
            name: "PPRiskMagnes",
            path: "./PPRiskMagnes.xcframework"
        )
    ]
)