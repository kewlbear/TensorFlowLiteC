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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241218/TensorFlowLiteC.xcframework.zip", checksum: "e7f8ac630ba8cb3e48e29d8f03ce5a95ad71ba387137348eb9dee8513057d463"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241218/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a47b7051a9f486bf381a0774cf0e507a52439df17414ebb71ffb94383458e001"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241218/TensorFlowLiteCMetal.xcframework.zip", checksum: "462edcc587e77a0b5741041c2700a8a2fa5cdcf1ca0c2e22e7cd0b432ed57cac"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
