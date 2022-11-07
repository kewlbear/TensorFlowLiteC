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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221106/TensorFlowLiteC.xcframework.zip", checksum: "e95afb908bc0c2e829d7c96bdb298c986ef5daf3bcb3e21563adbca4d4cc84a5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221106/TensorFlowLiteCCoreML.xcframework.zip", checksum: "46ae220b6d94d5cbb7f77ea45ba2dfec112d63c9858e21c81376a0eea2643c3f"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221106/TensorFlowLiteCMetal.xcframework.zip", checksum: "a91ad80842c4f60602b01ef6ec9739dd328d15ac1d11b23c3e569add4f4a9272"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
