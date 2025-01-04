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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250103/TensorFlowLiteC.xcframework.zip", checksum: "1fb04d947a78230da046328d6518d1ef19454bec8fb550f8e1d3504c9e06459a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250103/TensorFlowLiteCCoreML.xcframework.zip", checksum: "456e90028fdaebc7930ad5d87bf6a9f06d27f6abc67754cb7a4a05fa40655394"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250103/TensorFlowLiteCMetal.xcframework.zip", checksum: "bac0e1aaa1d203bb7f6ec617c644b9b8a24c7587a32a9c676d0c93ae9fd8a588"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
