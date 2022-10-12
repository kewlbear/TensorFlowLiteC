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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221011/TensorFlowLiteC.xcframework.zip", checksum: "89a981627ac333598e526480a33f88817501dedaf8b5c516680c5530f3349217"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221011/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bcb6b3cdf44db0642997fb6f23ec9e8c2313c62fe5b3f78ea31378552bc86796"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221011/TensorFlowLiteCMetal.xcframework.zip", checksum: "4638eaad9005a430b8653a36c77cf8d5ec9ffac0a3176761f3de6f4cb6f82658"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
