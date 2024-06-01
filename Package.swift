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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240531/TensorFlowLiteC.xcframework.zip", checksum: "339a12227766319ecb5c003c4b2f0af076b20aa6b9caa30c579e3b1c2e753cd7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240531/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0841ee0fd9491c8e7cdb134a95d6d9906942be3e8996b7d42eb09637fe74e76c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240531/TensorFlowLiteCMetal.xcframework.zip", checksum: "934991695104fcc252c36e3f18d6cca6eff4396f8e21592da990b6b80642696c"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
