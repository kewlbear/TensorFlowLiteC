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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241213/TensorFlowLiteC.xcframework.zip", checksum: "80f8e0f2fb4e524900aab15fb74fe6ffdd4b7b666294c4e5e6d254f7e154ab46"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241213/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8e34e99e46e1bb556b621aed3fa3c94f99b004c0d95dda71552ebcaf2660d4de"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241213/TensorFlowLiteCMetal.xcframework.zip", checksum: "e9d6dfc9c16a89a7d0587f55d7c5a5e8db783cabe9e7fb96aebffb29ea7df9a0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
