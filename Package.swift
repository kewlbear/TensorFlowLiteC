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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250428/TensorFlowLiteC.xcframework.zip", checksum: "20e73a44d52752127f78b7e7562cf7772eb1abb883aabb66a83096882ee4fdef"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250428/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a19b38e9e77175a04a0c0b69626398322bab0c4758ba1173b3773621de4fbb4c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250428/TensorFlowLiteCMetal.xcframework.zip", checksum: "1601572dba89d885a0de148bde1595bb6e70db955694e2e30e4ec6db47d3b60d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
