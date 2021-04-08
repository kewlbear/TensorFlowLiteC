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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210407/TensorFlowLiteC.xcframework.zip", checksum: "8301e43b66dbf30e134982269f4bc7b33b7990362a4e579d9d4c26a83aab7576"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210407/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fafe902c65ade74b56b0515ecb706633c92efa0acf3d24ce4fa8efe0d90b7188"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210407/TensorFlowLiteCMetal.xcframework.zip", checksum: "c3bf6ba56e086b0a5dbfb8bef3cd0c520dddbc2d809349a3b2435ad7b9d25c95"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
