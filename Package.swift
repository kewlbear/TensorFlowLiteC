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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211024/TensorFlowLiteC.xcframework.zip", checksum: "3b9c15b8545af4bcc4748b9fb2f9dc09939d617cca873386cdfce5d2df55b536"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211024/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0b1d56801e3a7813ff4cd2ceb3a3757becc971ee0d3284697139717faa1f035e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211024/TensorFlowLiteCMetal.xcframework.zip", checksum: "9a2df4fe36cf0fc04fd599d673a484dde6e8358fa788f14b9ba59ba4c6a3efdd"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
