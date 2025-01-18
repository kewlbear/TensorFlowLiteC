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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250117/TensorFlowLiteC.xcframework.zip", checksum: "f88c91fb6859347b3a00d3063740ce3b2b6940f3dca15d1e907fdc340df5cf7b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250117/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b27da337c8bf1cd48f31dae63e359e598d50e9e00b01c74b22333b0ea247bddc"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250117/TensorFlowLiteCMetal.xcframework.zip", checksum: "587203b12d58ce121145f9f790f50c9d0902f1642a4513ac8822d45318497ee1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
