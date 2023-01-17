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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230116/TensorFlowLiteC.xcframework.zip", checksum: "a59e198c6f3e4b588f759ccfe083d89a1cecd1b68c9e429b170508dc77be7e9b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230116/TensorFlowLiteCCoreML.xcframework.zip", checksum: "985aef8d6514ef592e1111695c6cb45eddf44b85c592696271aed8ee3eea2485"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230116/TensorFlowLiteCMetal.xcframework.zip", checksum: "488c0b49ba7b8d0529baf617da88875ea17437db1bceb8352ecb0b9d8cf66daa"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
