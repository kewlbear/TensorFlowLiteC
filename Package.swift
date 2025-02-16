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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250215/TensorFlowLiteC.xcframework.zip", checksum: "e54de78d4b591583d3333db5d7f3f9a31a191c02e63fd4ec2a1b18c37f65dfbd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250215/TensorFlowLiteCCoreML.xcframework.zip", checksum: "111a775d8a13b0ef252324becd9e5abe3a33890fbaf03da1df2781c937988b55"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250215/TensorFlowLiteCMetal.xcframework.zip", checksum: "1793fb0a7cc19f370f93a8e5b159a913d8045aa9f7516f7f926650f1a13802e2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
