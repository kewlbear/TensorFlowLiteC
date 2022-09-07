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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220906/TensorFlowLiteC.xcframework.zip", checksum: "d6df30ef5fe5236db20e8760315383103de018aaac420094a380b0b62b22d13c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220906/TensorFlowLiteCCoreML.xcframework.zip", checksum: "43d2c0fed8d863488b5c5322bb389d49d1e2b2bd66b7380a5bd8e681c88b7831"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220906/TensorFlowLiteCMetal.xcframework.zip", checksum: "19402a1e707e6042302a1347ef6fc7c9bab503a5aabdb95fe81bb8c524012c88"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
