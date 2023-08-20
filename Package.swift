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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230819/TensorFlowLiteC.xcframework.zip", checksum: "7bf16d0caf450b57bc4996a701e4ca3e1168015a68ad2efb4d8e62916724f14a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230819/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cf188b53212cf3074e3442912b7f551a5f916c7c9ce9518ade453451d1e82acd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230819/TensorFlowLiteCMetal.xcframework.zip", checksum: "e9629e7481d0093a164e4727d2f474bb0e22a656885cbf9baa80e8d6cbf855a9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
