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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240326/TensorFlowLiteC.xcframework.zip", checksum: "b80a46076fb81cc2db53d51ddfbafb39a0a21692bd95b45cc85031969149f6f7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240326/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fda8a7365ba845f78769112a1352b7e70ec8220ec9409a5837b90b4ed878be4b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240326/TensorFlowLiteCMetal.xcframework.zip", checksum: "be8dd6bce20d187c9007fc11ef29cdc35a7a3bac607b14c7f818d820f5320f9f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
