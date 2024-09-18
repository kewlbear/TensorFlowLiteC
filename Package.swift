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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240917/TensorFlowLiteC.xcframework.zip", checksum: "58baf5f404c24c9742c5656c8cae2ebb424a5b1123548d9c412c3d88f67d7b81"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240917/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ced83e572236c230a8833ce0ae4e0a373b15e7ad8e7940b4871c619083a0a50f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240917/TensorFlowLiteCMetal.xcframework.zip", checksum: "b94a7f9a404fdbe9b6cf074199ace3b01b6e444afaa367f1b167d65a78e2239d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
