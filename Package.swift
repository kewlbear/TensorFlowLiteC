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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230815/TensorFlowLiteC.xcframework.zip", checksum: "23f4e9d85af7bea11426ccc1669239f65f00fefda50621770336440ef2ac3c3d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230815/TensorFlowLiteCCoreML.xcframework.zip", checksum: "451e2801416cbb81a7ef188a8d4b5239cc20764701d93a7a8077a565cb472ff7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230815/TensorFlowLiteCMetal.xcframework.zip", checksum: "86fcc282bcf165e09f59711bf83527290cfb2f4270ee29fe1f7777f69a0ba264"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
