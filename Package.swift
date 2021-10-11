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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211010/TensorFlowLiteC.xcframework.zip", checksum: "e91a1b9f27b081711b08af65ddb9845042f67bbdca651331dc3d635854d902a8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211010/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7edb139a049b2434aa99ad2aa877bd7fcc47e1afc413686558f0ef393415abfe"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211010/TensorFlowLiteCMetal.xcframework.zip", checksum: "6a4be7803717cd7b9e55040cd917394a0a669c64d560e11c81861ab71e9e09dd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
