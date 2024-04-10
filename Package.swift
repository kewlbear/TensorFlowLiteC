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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240409/TensorFlowLiteC.xcframework.zip", checksum: "bfc620bde29f60c5d5bd30f026631c593f908fbf8629b319677ab4573a222b09"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240409/TensorFlowLiteCCoreML.xcframework.zip", checksum: "aa8d18924450ba72e980270a314f420532f491028f16edb68b25137b9ed34f5a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240409/TensorFlowLiteCMetal.xcframework.zip", checksum: "0e753e685d50a798979f4c8f480ec626cc40e351b79b62f89ca779688740eb1f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
