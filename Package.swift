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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230609/TensorFlowLiteC.xcframework.zip", checksum: "7de091ebbff92f197efa20ef8d54c2a93cb46994a24d31f2fa63ada0815eb4bc"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230609/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e2cbc9024b22512f84d9d1705bb4aac8e746579b19e01bcd4686f47bcf7e5930"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230609/TensorFlowLiteCMetal.xcframework.zip", checksum: "d7aa776d6c280c7d389f000dacbb1bd6dd1e71cbbdab6fba09236b04535a210e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
