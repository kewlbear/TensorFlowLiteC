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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210525/TensorFlowLiteC.xcframework.zip", checksum: "70402a675aa314125bce6d487e19af8f910654f0873a79e9d8252fa378cf35a4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210525/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8d1052d622fc5152282857c42c0f56371e460145257e3295bfa5c515bac9507d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210525/TensorFlowLiteCMetal.xcframework.zip", checksum: "bbcb1908816f1e4c6b9ca59fedf73ae0248be4318b01e3ed7bc096a3532f4bd3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
