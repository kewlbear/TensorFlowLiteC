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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230412/TensorFlowLiteC.xcframework.zip", checksum: "dc15978f6d0c21656a50c0814bed7d848732515a5ea9f506804c65689d90a7e3"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230412/TensorFlowLiteCCoreML.xcframework.zip", checksum: "27b45e3d1e08c7f13aaa6ebe866bcc50fb33301d69daf205ac2a5722db7ace1a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230412/TensorFlowLiteCMetal.xcframework.zip", checksum: "b4088c2450ea04e89b59ca9ebc9a879af446aa05249f5dc29a9c9a1486a44fdc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
