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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230605/TensorFlowLiteC.xcframework.zip", checksum: "3ac25f957d822acc16d679f5d68e2859167c0586eec453d3bfa901d812b09e3f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230605/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2c4643b7cb42636dd8405cbda9aca7ca9b4fe8be3a91f2b3f042cb58d79f4083"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230605/TensorFlowLiteCMetal.xcframework.zip", checksum: "ac945082cc1fa7a1677a03c4018b648f98fe0bafc0403a6a516af7bd398f622d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
