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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240523/TensorFlowLiteC.xcframework.zip", checksum: "c5c4c8167d25e3faf01d1b8a9cfbbcfc57c88b028869eb206ede3ac47db1d6a1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240523/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bf9624e39b9f154fab7d8216fa599106cc74ae5a820c77bd762730c8af3c2e6c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240523/TensorFlowLiteCMetal.xcframework.zip", checksum: "4290798832adfeb1c28c88418fc559756d78aa94e2462bf8d1aea3cd87d2c32a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
