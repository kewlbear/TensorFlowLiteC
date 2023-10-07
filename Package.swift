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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231006/TensorFlowLiteC.xcframework.zip", checksum: "4f460bd91a03ab51a2bd0489c38d8b8545b363f98a1932efc7146c16622ddf50"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231006/TensorFlowLiteCCoreML.xcframework.zip", checksum: "eeede20ef0acaf64ecdd98e01ed8e1c5c80d094fa0138565b4e64562f87564e1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231006/TensorFlowLiteCMetal.xcframework.zip", checksum: "58a8c9d08e2032241e34718d7b889ee8b45ccf5dd40d57aef4e5cb769b18e2f0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
