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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210508/TensorFlowLiteC.xcframework.zip", checksum: "dba0a1f1c6cbe6760c5d9e4ee0f8ac0c6aa5ba1e4f6f14222a1b2513994c8ea1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210508/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c5eaee5d3919da49c00528b85c73657ba221353fcac9ba7dfeeac574610ff76b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210508/TensorFlowLiteCMetal.xcframework.zip", checksum: "e512cb5532d9c702b079ffd381b46e3e61037ec58d0c1e8a5e262c02e2f7ac86"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
