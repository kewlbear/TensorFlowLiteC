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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240424/TensorFlowLiteC.xcframework.zip", checksum: "d9ec2f28034962a6922e4bf40a26c096c335dd988cb9119aed35684f6bf3fd11"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240424/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6da1dd6ce811880a92dfadcc1ca8872252f590b7fff4682660ded32fb2fdb25d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240424/TensorFlowLiteCMetal.xcframework.zip", checksum: "66de20f796d0fcc6b8499b8f77164d9d9cb8fc7b2d4472a526e60bce597ff835"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
