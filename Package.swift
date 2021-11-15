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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211114/TensorFlowLiteC.xcframework.zip", checksum: "6f2200b9e2ca4d6178e8d344b44119787bcc54ddb593fe7a0ee4ea9a91b0ab70"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211114/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0e5316a6adb56baf9799b15ed898684b73a2a17eb25fbb9e57cbde7b053dbcd4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211114/TensorFlowLiteCMetal.xcframework.zip", checksum: "503c80f3cef76d841ec25578a0ca9082363ca5bb1beac089267def6f9bff9b7d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
