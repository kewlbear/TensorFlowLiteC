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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210328/TensorFlowLiteC.xcframework.zip", checksum: "90cd202e5f6b2f9ab3f9a02c16adbfc64f8a243a2d183bddb29e2fdda19b49bf"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210328/TensorFlowLiteCCoreML.xcframework.zip", checksum: "915f836c737c73b34b3e6e9487afe7db1f4e60041b71f34773a38228d9a265da"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210328/TensorFlowLiteCMetal.xcframework.zip", checksum: "71e282f2463a3f480e5de004aa4ca6336f4384fdff39ed5dc1fdc95c4e52b653"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
