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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241221/TensorFlowLiteC.xcframework.zip", checksum: "24d808407d0f3272b9eef98a33b0d8ac1368ad6e67644bb998e9a668d842beb5"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241221/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1f221653047ed5ec3d741eeb4537b66884b7dbd6b4bc1ec2cb7f7075c53daf48"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241221/TensorFlowLiteCMetal.xcframework.zip", checksum: "58c912ffaeb3a5be88188f2f000b5a6fc4c6e985a522b0da30e0311d81aae6ff"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
