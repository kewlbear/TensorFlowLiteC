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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230430/TensorFlowLiteC.xcframework.zip", checksum: "8a60a294997b883e713244f52f815eac1316874fe17d7564ad552b3b4553f614"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230430/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1a6195340099daa5f8fbbc1f5eb40783d03749275d2e918259cc075d51a2e42d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230430/TensorFlowLiteCMetal.xcframework.zip", checksum: "63e3fd4edeb0093fc95a28cbc9c57e8337d7b06810923e748a6a425c5e30bbae"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
