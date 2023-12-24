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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231223/TensorFlowLiteC.xcframework.zip", checksum: "453ee310a2e2c76643b40af0453e60a6275439d831d4bdd2dd48f4f027f0e354"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231223/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6c98cb4d192eecc53831b09f87bf19b2a5bb4155ecf0d84ba82efef090d14231"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231223/TensorFlowLiteCMetal.xcframework.zip", checksum: "a1c4be62779b2ffb55a66a78263923ae7f672abac1abbe758127fbd58fe96e2a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
