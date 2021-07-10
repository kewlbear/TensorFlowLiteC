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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210709/TensorFlowLiteC.xcframework.zip", checksum: "0118242e0280c232096c61bf19aaa2d3eb534af4c6f0aafa7a334aeef8b31daf"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210709/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a744fe1b93daaf1ae58f1d214166294c1e8500ac9be91fea7e154383107e7698"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210709/TensorFlowLiteCMetal.xcframework.zip", checksum: "55aa235d202cf8d368e73f5718e4d25823aa38e33132f7d0e0505dd7323b1eee"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
