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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221119/TensorFlowLiteC.xcframework.zip", checksum: "73d1fceca929dc2586323c5bb6e7b4670f763e9e3fa62d18a45f82c333b089d9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221119/TensorFlowLiteCCoreML.xcframework.zip", checksum: "9ccebddae1b1be7dfb47eb8746f6a672e9bbfb6874a70167492302c34bacf6b0"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221119/TensorFlowLiteCMetal.xcframework.zip", checksum: "ba62332e08e8fec04190c94ebd61f591c8c2e9d74141c3557d5142eabce33069"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
