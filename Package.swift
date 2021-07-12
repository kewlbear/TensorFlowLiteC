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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210711/TensorFlowLiteC.xcframework.zip", checksum: "355cfb5b7c09fd156e35516462cf180ec3e30c27c40cd335a9ccc1946a675568"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210711/TensorFlowLiteCCoreML.xcframework.zip", checksum: "65ad37c1a6de4b71a8ffef54a91a77570830e5216eec5c3cebc305bab35aaf27"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210711/TensorFlowLiteCMetal.xcframework.zip", checksum: "a33f075061ca60b7c7f5082877569252ffea1c20c7554b5fa2b4cf697261ba1e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
