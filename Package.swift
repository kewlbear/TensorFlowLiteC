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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210701/TensorFlowLiteC.xcframework.zip", checksum: "cfaaeac1dc5bd3ac32a5499d7b1360d4242f77ba110398539e359e841ec204d4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210701/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0a7d3beaf380fe7f7e02a6964c9c068702ad4124aea776aadc26c553d5ad6347"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210701/TensorFlowLiteCMetal.xcframework.zip", checksum: "d0e0d483fed45747b95144e454c350f6c43e31ae0d2dd6e2d8c7db036e1569f2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
