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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231122/TensorFlowLiteC.xcframework.zip", checksum: "277afcee89d8add77efbaf6b204bc21065c0c4c5150f6ee267d5d3cb04ddaf6d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231122/TensorFlowLiteCCoreML.xcframework.zip", checksum: "eed3fa8456106f2016172b0648d3b1ecdd70b457697c26fd0973a68a97b1f53d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231122/TensorFlowLiteCMetal.xcframework.zip", checksum: "b0fb9f79117696f8b8f2b8a2993cfcb4ae7003d8a57e8eb2087ad9e87208fefc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
