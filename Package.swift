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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210821/TensorFlowLiteC.xcframework.zip", checksum: "ba4ad735c80842605bfcefc276719008d0d43c52be0c12ea8c88f7e5e4548b87"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210821/TensorFlowLiteCCoreML.xcframework.zip", checksum: "04aa6400e498e16ba62f51e336d5dbe52f293a5b8a843497a9e7f03fe248abef"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210821/TensorFlowLiteCMetal.xcframework.zip", checksum: "8fdf2fd66cca73668d79ac3a6cc8f9c36b7e88df218d33790b1250f1214a8d41"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
