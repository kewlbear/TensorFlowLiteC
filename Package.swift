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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240906/TensorFlowLiteC.xcframework.zip", checksum: "760973e01c52242cc4fd60caa7729905a503d678cd89486036930108060174b8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240906/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d810a5489f004aba897e74a665d0fccf45be682b0da7277971c910ab78369fe6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240906/TensorFlowLiteCMetal.xcframework.zip", checksum: "1578ba66716e326a72b0aea07185c61f3d89d7e71fa9d0ba06f46960fd9ee8b9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
