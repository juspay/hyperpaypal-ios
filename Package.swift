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
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.8.5/HyperPayPal.zip",
            checksum: "a963b7aee547b8fef05ea407dd8eed2e12757362d6d23afab86066876281334a"
        ),
        .binaryTarget(
            name: "PPRiskMagnes",
            path: "./PPRiskMagnes.xcframework"
        )
    ]
)