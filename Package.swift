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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250210/TensorFlowLiteC.xcframework.zip", checksum: "57622324cd525826597811b8d496c0272f66a2ebe5c697861500823b731ad7fa"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250210/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8558c1b5cb7e5addd8bbd054289f6a9435f9d0d992a2b9365d11d73026303ce2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250210/TensorFlowLiteCMetal.xcframework.zip", checksum: "25347f242a2c72801da113eaf01339925fd9dfdc0614971cb04a34e73aeb029c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
