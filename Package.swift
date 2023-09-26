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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230925/TensorFlowLiteC.xcframework.zip", checksum: "b7d089fc27d8db749d8877c5c848f5e8ef379c9027e581557989e767dbe6fa8e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230925/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a7e508f59552b443fbd3b6abb107ef73e0b0ea1cb117ed9fa326cc975ddf8fa1"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230925/TensorFlowLiteCMetal.xcframework.zip", checksum: "54bd3b2ddfff695b113bbf1676a1d2a923b8b04bbe5b601764013002068580b9"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
