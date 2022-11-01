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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221031/TensorFlowLiteC.xcframework.zip", checksum: "271c2b05347a67f532cb1e45759f15866028cf375a32854fb902e6b51ddc5195"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221031/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b5b380e5eb704275818a57929eb5f4bc96b0339ab1941ca69fef63c4c4c99890"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221031/TensorFlowLiteCMetal.xcframework.zip", checksum: "67210f160b04a148405c3d2793c892915f5ae6a17f6d34780cff0475548f57b3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
