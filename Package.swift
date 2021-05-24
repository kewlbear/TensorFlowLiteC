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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210523/TensorFlowLiteC.xcframework.zip", checksum: "1bede5478828c09271e2c1e9a5560ec17aa21076ef200dba15d3d29e50ab2487"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210523/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8c4b721f8783ff979b9ff46bb7ed4c49e69f00b339426163992b288f61616066"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210523/TensorFlowLiteCMetal.xcframework.zip", checksum: "9615a3cfd94f6e173949bc2c5da769a7cb2475c8a69b508fd8fb521790edf61e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
