// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "TensorFlowLiteC",
    products: [
        .library(
            name: "TensorFlowLiteC",
            targets: [
                "TensorFlowLiteC",
                "TensorFlowLiteCCoreML",
                "TensorFlowLiteCMetal",
                "Link",
            ]
        ),
    ],
    targets: [
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210415/TensorFlowLiteC.xcframework.zip", checksum: "160caca0e6b3319db1b356ddb9a59b368d1d83ff40b56c790952bd9be8266c5a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210415/TensorFlowLiteCCoreML.xcframework.zip", checksum: "feda84a1342bec6cdf449be70c140ba4a0d74dae1495d29bf711c3b90230ac2e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210415/TensorFlowLiteCMetal.xcframework.zip", checksum: "a1bf23fc6ffa2f808081488819490496aa0ae49c78b78b7006d739208968ecda"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
