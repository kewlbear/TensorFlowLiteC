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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240206/TensorFlowLiteC.xcframework.zip", checksum: "7a7f982c9ffd2c78c07d3d7ad600ad442ace241a38c83a75ad9f22c411e1538b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240206/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0ff7829d44f1ebd8c40f61eb1291722359f19caa85f924c69f22258970d8fe88"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240206/TensorFlowLiteCMetal.xcframework.zip", checksum: "8dd29ffab2f573f3ef47f30711fed1e4e17ed6abfa9fbabc0a96981be0e83620"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
