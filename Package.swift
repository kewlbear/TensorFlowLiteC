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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250605/TensorFlowLiteC.xcframework.zip", checksum: "da101a7c73d721d5a2c1405f7aba400225b8494675569f89e681d08d6c8c904c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250605/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3f92989d4d07cf3d478b897b242a849e951ee9594b8d20246f8db390736103cf"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250605/TensorFlowLiteCMetal.xcframework.zip", checksum: "e678411c8d57ff98bfb0c68b6b97455ec9050bb508c75cbfc53a2007b7590cbc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
