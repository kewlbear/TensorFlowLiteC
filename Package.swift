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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240313/TensorFlowLiteC.xcframework.zip", checksum: "bb5aad511baac01e71e08cce09cf78a66546df4a34196de828ddc15b59008266"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240313/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cdd0ef9b9777d25f0cb940bc7c7a7c6db9c898a7309762ee78013d4eb1c5418d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240313/TensorFlowLiteCMetal.xcframework.zip", checksum: "16017f9988df04bbd77810be969feeb3a854239c13cb1a7b5b6e188acd6d64b4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
