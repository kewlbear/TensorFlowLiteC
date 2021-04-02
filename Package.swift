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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210401/TensorFlowLiteC.xcframework.zip", checksum: "04f94a1380bc859677e4fcfe1322a8f963270a1afe2eb0e2146041ecf8927021"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210401/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e20f0631fd4a73bc1fd9dd1c610343e5af8e13f91361e608b2ace557ecfb549b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210401/TensorFlowLiteCMetal.xcframework.zip", checksum: "4ec33a1c7fe8af0be5ca6aa05bfb2077556277363abe21dac9288b5654540919"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
