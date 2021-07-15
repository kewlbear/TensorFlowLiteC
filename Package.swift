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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210714/TensorFlowLiteC.xcframework.zip", checksum: "dde767361e5ef98bce7efc97a952f2825dc2505db41ab507f668d4904305c22e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210714/TensorFlowLiteCCoreML.xcframework.zip", checksum: "83f421b0f85c2767b34a62c47ef03b39070f0c530a247083372e69ed2e777f6d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210714/TensorFlowLiteCMetal.xcframework.zip", checksum: "86484d68aee3fbfa54f80a48c25134645e2481b4692959c7a649038d2faf2df9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
