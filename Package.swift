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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250204/TensorFlowLiteC.xcframework.zip", checksum: "a4bd4644fb0bf5fc3ed79db9c75b769b77857bf3333ce92b6ee263d5e2ccb189"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250204/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2d4bdbe959ce3cb8660ca37e24357ddd02740f946e876364d19a3dd3bade62bc"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250204/TensorFlowLiteCMetal.xcframework.zip", checksum: "fe8e4ee3b8db59e0764232cb3c453e7d49b404be6184eab664076aa4967071ff"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
