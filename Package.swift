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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240528/TensorFlowLiteC.xcframework.zip", checksum: "251e315485338c543a0c3a634497c85f7f0290322a6296628f7146dcdbb4db62"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240528/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1565391fcaf1bfbf6321877825f9f1fe0de6f0d9a9d460881e9e22dbeec75163"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240528/TensorFlowLiteCMetal.xcframework.zip", checksum: "e85cb5c93179b37fe662f61a5ec8a745401d04606a404237f070b96dc4cd6033"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
