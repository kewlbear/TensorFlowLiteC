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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211013/TensorFlowLiteC.xcframework.zip", checksum: "e1e6064da1976e113f774c8b81d47e5ec08bb008a7b4d34b37d08c61c164b7fd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211013/TensorFlowLiteCCoreML.xcframework.zip", checksum: "50344f5729be49946802965ab75f09c38027ebe4d94c1d53735e39a61372cf31"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211013/TensorFlowLiteCMetal.xcframework.zip", checksum: "3b264ff14b0b48996278bb5d71574db14b68e858ae6fffd8fc852a8012b93383"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
