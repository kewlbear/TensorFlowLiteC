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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250315/TensorFlowLiteC.xcframework.zip", checksum: "56c3f6c2c7d330e43f73da2cac4c7a5c69d2da356a9adad92ae5cd5eac12e839"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250315/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a5d3e28a06dcb8137af0432b6ea6876d049d7ae096be1af86d28ea24f7178b7a"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250315/TensorFlowLiteCMetal.xcframework.zip", checksum: "7f66747be22dc1a289245137589aad7089324c939890dcc80a25e20475da7335"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
