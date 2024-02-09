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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240208/TensorFlowLiteC.xcframework.zip", checksum: "f1f6a804741338b70b10260b1d169e848af0d89411f534d13f63027b93a7053c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240208/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4003fafcd4b56645bbeb52888e7cfc2f1137837b9765c53d72e0863668515518"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240208/TensorFlowLiteCMetal.xcframework.zip", checksum: "81e2a58a1596f38954348f170610118a27b57ad97d481201c83a7fc0a3b2b74d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
