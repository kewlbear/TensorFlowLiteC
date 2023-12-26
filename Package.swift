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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231225/TensorFlowLiteC.xcframework.zip", checksum: "dbcfd657fa682efcf440f0aec04198a49129d11cbb6aa1bb0021ec06c4cd8368"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231225/TensorFlowLiteCCoreML.xcframework.zip", checksum: "12e9c01facc9a26aa5ec2fa40cc68def4562235e174f8f6e8d490efd30e99db4"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20231225/TensorFlowLiteCMetal.xcframework.zip", checksum: "aa65673b7e8fb3008f6795f7e7df984ce683d1cd5c1df019d2fde21099fa1d6e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
