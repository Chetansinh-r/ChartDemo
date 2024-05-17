// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "candlestickchart",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "candlestickchart",
            targets: ["candlestickchart"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "candlestickchart",
            path: "./candlestickchart.xcframework"
        ),
        .target(
            name: "DownloadCandlestickchart",
            dependencies: [],
            path: ".",
            exclude: ["candlestickchart.xcframework"],
            sources: [],
            resources: [
                .copy("download_xcframework.sh")
            ],
            swiftSettings: [
                .unsafeFlags(["-Xswiftc", "-DSCRIPT_PHASE"])
            ]
        ),
    ]
)


