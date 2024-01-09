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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240108/TensorFlowLiteC.xcframework.zip", checksum: "12f6741259d78d976a01538c1abd70c11e87e81029cf4ffb885a1facb5c9ed6f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240108/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8c6d314da75081eedcfb646e6aba449b5da26a81199e7061b923eacac0a2ee8b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240108/TensorFlowLiteCMetal.xcframework.zip", checksum: "b20ffb625a2382ae5d6cfcc5d3f35bd25b91e599a43d37ee0144d074aff1a3ec"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
