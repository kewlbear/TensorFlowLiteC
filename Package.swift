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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230530/TensorFlowLiteC.xcframework.zip", checksum: "6478861c809039adde3be51f40057e1f6f45a130f93929213c1b9a44a417bcf8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230530/TensorFlowLiteCCoreML.xcframework.zip", checksum: "26e9d5df3731ef0c6297e69e0ca40e103826eb9b66bde5c26cb8a343970b32c3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230530/TensorFlowLiteCMetal.xcframework.zip", checksum: "e7df882e1764f2a6c38c035b13b761350652bc42511879c2771ee531af2dde11"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
