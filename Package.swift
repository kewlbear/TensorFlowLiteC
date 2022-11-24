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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221123/TensorFlowLiteC.xcframework.zip", checksum: "b3c1e4e46cc1240eb4918149dbd3e48fdfd37af5649d5dc7d169422b54488d55"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221123/TensorFlowLiteCCoreML.xcframework.zip", checksum: "06c44a540c2d6574089befd925a2215fa6386b0a15113defd4c34a683623f1aa"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221123/TensorFlowLiteCMetal.xcframework.zip", checksum: "afb97eb49457543222f6281b41a379b25d6d326edbb003c4b33db5267acfe110"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
