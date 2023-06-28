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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230627/TensorFlowLiteC.xcframework.zip", checksum: "79171a244fb8e2dbbc810ba8718ddb6e473897e015a14d22fdcd8e25fec3cfde"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230627/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9ecb1243cef7e991f0a738ea98766972b5cd9582d14132b6fb9a0364250f7745"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230627/TensorFlowLiteCMetal.xcframework.zip", checksum: "6774124ddb64318b7d41d7b4e11160b7d54cb11b63b77e4026987f9891f33327"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
