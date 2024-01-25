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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240124/TensorFlowLiteC.xcframework.zip", checksum: "371c9a8d9debe91bbc6feb602a8ce2134755c20da75ad0dd2764938e7c8e8253"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240124/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3ced13d9419f503f626c14a41b9b5a9c307add8efc00e5a030b9caf680d7a46c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240124/TensorFlowLiteCMetal.xcframework.zip", checksum: "6bc9c5b97f396435fd128ff186422696a0c1b68c5624d4e97a1101ee7224f469"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
