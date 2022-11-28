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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221127/TensorFlowLiteC.xcframework.zip", checksum: "2cdeed05df52fc0ea03e75056a9ea7730ad86126c31f6a2b333a4e72111b6e7a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221127/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a9a8e60cd788f713f625c54f622b8e546eb3ed73234e65f31df4b190b9a70e8e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221127/TensorFlowLiteCMetal.xcframework.zip", checksum: "f3024ab10af40bb8471e5683b0d2def76677ccf5d95f61586a0449b66e1a611d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
