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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231220/TensorFlowLiteC.xcframework.zip", checksum: "03e19ea44266f43e3df2eff73a819854d842ae717f05d4577ce6510149a1629b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231220/TensorFlowLiteCCoreML.xcframework.zip", checksum: "44746a21d6aa3051efebc9779d8f464ca77475e7c9d4a62191817c4c73363af9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231220/TensorFlowLiteCMetal.xcframework.zip", checksum: "44152983a350a7397a441e7c3537d277f0efd0bdbf4084d46c5c64564c2c159c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
