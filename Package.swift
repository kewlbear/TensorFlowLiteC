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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230726/TensorFlowLiteC.xcframework.zip", checksum: "b78370c9a4be308e9aa11cf9fd4546b7ec555723231ac6106fa5d8ce3619f7bf"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230726/TensorFlowLiteCCoreML.xcframework.zip", checksum: "894cadcbaa65548a4e7bf3d2cb69e73b3a971e55795eb8a28aa90d6e72fbfc4f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230726/TensorFlowLiteCMetal.xcframework.zip", checksum: "22863e13bbd3638182b957099199f90f0916afd23a66c68c6a4c536d9d1dc41f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
