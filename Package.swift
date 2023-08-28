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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230827/TensorFlowLiteC.xcframework.zip", checksum: "0e40df1f856ff99dbbf227d03a4012706b82a2ada9cdb609a3ada72d200055bd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230827/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e61e35119c5e4722d142ca5a5aa212ff511bc95f9284bdcb672d5a11c4eb5fb5"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230827/TensorFlowLiteCMetal.xcframework.zip", checksum: "04fa1d2a1d434cb6e27a1308385e42c8c6b922c39bf3e34224ef01ef0724ad9f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
