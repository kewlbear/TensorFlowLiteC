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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211002/TensorFlowLiteC.xcframework.zip", checksum: "13846c7a46f6d24adaebb9d91675544cc633c190b63abbcc88750f3473691d60"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211002/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c816eaf74078b310e45a73805e7bff1f024d8ac6273d7ee5d75ad23c17e9c4c9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211002/TensorFlowLiteCMetal.xcframework.zip", checksum: "97fc1b8ebe3b177916c77ea7a92f0941bc5bc22a0b0d0d47177bf949f9819bde"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
