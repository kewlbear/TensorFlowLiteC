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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230802/TensorFlowLiteC.xcframework.zip", checksum: "2121f4b5fe74442c5e75fa973ee6ddf627412243745462f576985f06e2ef1bf1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230802/TensorFlowLiteCCoreML.xcframework.zip", checksum: "aafa84ba56f2039d5651f9b46ade57bfeaf719aa3254be28080e48d0aed4c684"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230802/TensorFlowLiteCMetal.xcframework.zip", checksum: "eca3c8108b46d1a8d74aac6a1798d970e0734e0df5417c3ed881e85d5c6c47f3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
