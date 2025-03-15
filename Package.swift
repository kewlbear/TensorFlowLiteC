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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250314/TensorFlowLiteC.xcframework.zip", checksum: "c4879a9b53dbf238fe8b57292dc131ffe2c2c37cc866d9a0c992d2dfe1c185ea"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250314/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3a35f08061788616681c8cdbb9366b71727a426de9e0be9d6bf7ac266dc0b48c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250314/TensorFlowLiteCMetal.xcframework.zip", checksum: "e76ef6c5307b4c6686fc6f7e8b762af6c7281f1620790dea2553c32ce845f513"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
