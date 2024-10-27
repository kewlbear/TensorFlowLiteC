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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241026/TensorFlowLiteC.xcframework.zip", checksum: "4d0602d397903dc2ea6db3ba68a8b8bccac742b170c0c5c60aeb17e06f2c8bfa"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241026/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6534aa11688bf8c97fd5bb6426b421ea428a82c9014ff983aa45670d942a9a5b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241026/TensorFlowLiteCMetal.xcframework.zip", checksum: "1fe77b5730be7c3278d1f6f6235bd562e9bafa651d093498f04d85946cfa67db"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
