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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221024/TensorFlowLiteC.xcframework.zip", checksum: "736689f992a4ea333de6e50ccab0c288e7fa94f67b0847b88e709b6ed597e4f9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221024/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3637319bd26cd23d62525f51d2933d2c8a198b88c9e048cbd27a969914e84ab0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221024/TensorFlowLiteCMetal.xcframework.zip", checksum: "a048dc93a26149c743f5e2cf32cfdb3d571d5a267bba64f7ef8217658ab4c4ef"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
