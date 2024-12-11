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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241210/TensorFlowLiteC.xcframework.zip", checksum: "4f1a286bfbd177306fc87fb520f376e85adda26a067e21cd7a3e0396b678bf44"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241210/TensorFlowLiteCCoreML.xcframework.zip", checksum: "650157cf8787477e23c4c54e9aa350ab2b0476b84c52866673ed0cd0c8f7e2dc"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241210/TensorFlowLiteCMetal.xcframework.zip", checksum: "36704186e6559ef9137ee6de5cfaf9e1a5ecedc65a74c67d149049c3dc98e38a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
