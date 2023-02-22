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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230221/TensorFlowLiteC.xcframework.zip", checksum: "30d6a249fe1c10af6a4d4193044691a9528593baa7393fa1672f68fb3da38908"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230221/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7ae5d45ee1269eafacadf7b6a98987878ec439f8fd2160d97dc654fe3b4ad5f1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230221/TensorFlowLiteCMetal.xcframework.zip", checksum: "bb37dc85db6773b2e8be735677185f3bb88e11fb9fb095956a4ccbfe586beff8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
