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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240508/TensorFlowLiteC.xcframework.zip", checksum: "984c484a0832b637cd818857cfbf8da7dc25194b2384eb0b4de1e71b83dcd603"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240508/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3c75fa7bd483b95a9bbc98e080b982c4c1868b73d4286666416c6355d67d09b2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240508/TensorFlowLiteCMetal.xcframework.zip", checksum: "63ed8f2a8d9fa532ab2ae90d24ea483568b935ee80b32cf60fefa45882edda31"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
