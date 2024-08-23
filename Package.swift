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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240822/TensorFlowLiteC.xcframework.zip", checksum: "04832717f221460155679cd8c74de6a82062a0cbef5068b9cd96016510335274"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240822/TensorFlowLiteCCoreML.xcframework.zip", checksum: "20ac8ad71f72260ab56fbee299775e1c73d56794a1031481062a22413b9d0fed"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240822/TensorFlowLiteCMetal.xcframework.zip", checksum: "2cc0847cd6bf496040384687582768e121007597fa3d5b8afde0f5551bddcba8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
