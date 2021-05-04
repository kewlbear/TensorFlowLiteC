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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210503/TensorFlowLiteC.xcframework.zip", checksum: "061d647e2270c6a5b5af9753ccaa4bee61c17e3eefa8545fa72bde018742038f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210503/TensorFlowLiteCCoreML.xcframework.zip", checksum: "890c53136d0fcb5c3f8a238ba8d24bbc9a78b6b74627cbe766f53e178e0c15df"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210503/TensorFlowLiteCMetal.xcframework.zip", checksum: "05445a8c865ba17dcd4d7e94e5fb8dbc74f58e032b5a5bb4c4b14f3ea5054d41"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
