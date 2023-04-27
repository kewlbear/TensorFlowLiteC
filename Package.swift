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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230426/TensorFlowLiteC.xcframework.zip", checksum: "83cf1ef190fd8f6042f375a8e9fad0ceb6030f443fa258d1938d06e51259d76f"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230426/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6c191f45aa25f803993f5b5693b96bc3327fe4d0ebd8805957e775fc0821cd45"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230426/TensorFlowLiteCMetal.xcframework.zip", checksum: "7735e48be67baa4670575a2620a3d8a770fc22a22f175b5b09aa394937d3a7a2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
