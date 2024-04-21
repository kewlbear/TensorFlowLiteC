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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240420/TensorFlowLiteC.xcframework.zip", checksum: "fb54eeefed12373acbd1e924cd40f6e1aeff4a5f4b8fc8575128f7ba0f69be87"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240420/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2fdb0d8e007f26a3c660aea8248d329cb365e7a8da5b7259d5b9abef28b8456e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240420/TensorFlowLiteCMetal.xcframework.zip", checksum: "446c048056aba0dde23b78650a5341eac49681896723df37d4768c3b9a8c923f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
