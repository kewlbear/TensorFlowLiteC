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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230206/TensorFlowLiteC.xcframework.zip", checksum: "fd7a1412198b956a5b907b3b8a88684732b198c2f64233d4bc0e3d13b1783a93"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230206/TensorFlowLiteCCoreML.xcframework.zip", checksum: "99baa49f1c083a45c80d50a4a0b7d3be8e0e6afbe0e99052bbc0efc6fca67dc8"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230206/TensorFlowLiteCMetal.xcframework.zip", checksum: "ac9fb76688ca37533d688f2efa2d5f168572ddd1d45681a2ffcf459fa6fe1cbf"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
