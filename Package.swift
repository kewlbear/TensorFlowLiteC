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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230603/TensorFlowLiteC.xcframework.zip", checksum: "0f0229bed232e406c3727d2762de9b03f237548e7300ed653aaaf0efc66e5313"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230603/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5a756c68e88fec71481152c2c56fa4bc78a8d286f1e0f8c2ea0ba56ddfcfdc10"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230603/TensorFlowLiteCMetal.xcframework.zip", checksum: "d9674be5dde2f7759370237b249452025636076642beb3cc5f766ceff97d59a1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
