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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210602/TensorFlowLiteC.xcframework.zip", checksum: "6101d4b5f05a8ebf1e8696b8c28544f68692f40896fadea58b619223e8cccc8e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210602/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cb9c33fefee848a86920b6f9a2c14430110eb832646db0cc0dfcb853d07b7528"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210602/TensorFlowLiteCMetal.xcframework.zip", checksum: "1f2992c0189f89ec2d5faa8a99dec12d522c41b56886bcde5b60b719f30aa248"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
