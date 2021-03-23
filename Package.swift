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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210322/TensorFlowLiteC.zip", checksum: "1c582821f774c11ea4566ad6a81f19ca3c744179f01a7f0c9ded9e8bc0746802"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210322/TensorFlowLiteCCoreML.zip", checksum: "dc82aae7fcce20271cfa902aea288b152862743976c3a1487c39e52c4d83a60a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/20210322/TensorFlowLiteCMetal.zip", checksum: "44a6d1c7dc8ffd514860362ae04d0bf2304794fa9832e30367a2d7fa9a361a97"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
