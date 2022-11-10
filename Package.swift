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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221109/TensorFlowLiteC.xcframework.zip", checksum: "96e5ab6b8c5db663d6e995a3a97c495193e1142e41f975a208463d23b8670f7b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221109/TensorFlowLiteCCoreML.xcframework.zip", checksum: "09e516abc1da45cd2f81f28c7746661d131efaea484b74b6d2e903cd29aa3bf7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221109/TensorFlowLiteCMetal.xcframework.zip", checksum: "c629640fa3d37c6f250aa30e68a78b3f32247704254f9d3cf6b256987697c294"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
