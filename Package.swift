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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241015/TensorFlowLiteC.xcframework.zip", checksum: "6ce69167a5858212f3d7e3f4e8b5e026427dfefe104d30099ae08c383590e0d6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241015/TensorFlowLiteCCoreML.xcframework.zip", checksum: "146afc8f7ea493244b01df3897667b50a5f547b65b0a091e4d168b5220a24752"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241015/TensorFlowLiteCMetal.xcframework.zip", checksum: "310accbc6d3b1ab0debc62f46e967c6a589bdd53f5c4268af43bdb691b512a02"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
