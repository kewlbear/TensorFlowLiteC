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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250522/TensorFlowLiteC.xcframework.zip", checksum: "cdd6c1620ea7542fd0a088b149fc4aa3eac5bae9e64ac635f6889a78d44be313"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250522/TensorFlowLiteCCoreML.xcframework.zip", checksum: "3717ecc30b0cad98d0568730117b40ef7212c3ca74241f5c7d523b3c7fdcd209"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250522/TensorFlowLiteCMetal.xcframework.zip", checksum: "63a40f4bfe253d202415f62a3f0bdf0387321cdbf2534850fd80a0aeb01eccdb"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
