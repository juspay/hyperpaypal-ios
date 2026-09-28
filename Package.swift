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
            url: "https://public.releases.juspay.in/release/ios/hyper-sdk/2.2.9.5/HyperPayPal.zip",
            checksum: "c9c5def4274ee0757b10ad0c112fb30595833aad8113319baaae3ddd0ffe0aab"
        ),
        .binaryTarget(
            name: "PPRiskMagnes",
            path: "./PPRiskMagnes.xcframework"
        )
    ]
)