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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240123/TensorFlowLiteC.xcframework.zip", checksum: "1c875bfad28fc49e1bc1d4fe9375738536f31b5b78f0375f6814407133392dfc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240123/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4caeab6bd9473fd255b1cacc5145c10a6358d68eb797f1ba56bdb641db2bc0a6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240123/TensorFlowLiteCMetal.xcframework.zip", checksum: "51ae7590412341f87e477e54f960b4a02c12233ecd0fb75b0e8df6b5150e96f1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
