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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230515/TensorFlowLiteC.xcframework.zip", checksum: "79ab1db6320c268f867229bafafdf21e1b8a90d86f4e66588b0a44c912de473e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230515/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2b8177d5de55ce9df60f3f4768fb395c84d8f91f24e633d6d46264b66d6ae009"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230515/TensorFlowLiteCMetal.xcframework.zip", checksum: "f48a8a3b72c6ca3fb5137b59350383723d6549372d2359b7edf9b578d67efa33"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
