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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250427/TensorFlowLiteC.xcframework.zip", checksum: "487b2a87605a4c6c5d550cbd38b48cdc5d6346e65749edbf2cf381226c390a41"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250427/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ad017ef787b13047140b32c867f4bc3e67e64002315484e0fe8dc190e40ffb9e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250427/TensorFlowLiteCMetal.xcframework.zip", checksum: "bfeea676d888f89a092f173ad70ab2114ccaed170f1e6689e573ef134c58c574"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
