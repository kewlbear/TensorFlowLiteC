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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231010/TensorFlowLiteC.xcframework.zip", checksum: "dd3ab8ebee7be6d95e6c6ef014f009bcbaba2ca8b035d818b4fb36310e456d95"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231010/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a8e74fbb7a782e50a81da1221fb11587721bd3add532abbcea50c72232fe12c3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231010/TensorFlowLiteCMetal.xcframework.zip", checksum: "e718e3fa1491de67145e8d3af4879d207bbbdcb364752a87efc82daa095903f8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
