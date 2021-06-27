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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210626/TensorFlowLiteC.xcframework.zip", checksum: "1b82f9c881993301eb43cf7bcf24dabb3ff3ab934fc8eb43a3c9c018def28368"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210626/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c5f53eb5521389cbf141e403986de5e587a3b738cf0eed132dcd2ddaaba4a1ab"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210626/TensorFlowLiteCMetal.xcframework.zip", checksum: "85da6023d0b0d3d5d2fbd6290106fcfaa93cdbfd840ba138334debbd420303d4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
