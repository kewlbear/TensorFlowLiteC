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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211122/TensorFlowLiteC.xcframework.zip", checksum: "bc8c9b03a4f1a3df9fa52530d8ff14c15cdbcc9bec98f5aa5d789b73d383b8de"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211122/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d877fc99c711341331b6852972d3d0b1e0c3d4e6d9bd23d90ad7bc3273677582"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211122/TensorFlowLiteCMetal.xcframework.zip", checksum: "4112e89a1f2bd895e7c63591c0ef416786d5521f5c889d31db2688c064de2f1d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
