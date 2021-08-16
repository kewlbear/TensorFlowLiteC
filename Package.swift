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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210815/TensorFlowLiteC.xcframework.zip", checksum: "a9e601ced07b493376e0146e41682cc7924ed34cee504cbbafb47f81b295a71b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210815/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a77c021bc324045e730fbc0a12f76a4d461db518febc9313ca644bf52181e6bd"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210815/TensorFlowLiteCMetal.xcframework.zip", checksum: "7defdcb49b8126febe61df1f52b737c210ae2762851b630f32e4ad7c97adbbed"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
