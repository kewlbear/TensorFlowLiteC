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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230711/TensorFlowLiteC.xcframework.zip", checksum: "ebaf9babe0006721c0724bd76c2b08fad6b9d2b53082c22cb7f758711bf509a9"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230711/TensorFlowLiteCCoreML.xcframework.zip", checksum: "78a951a00cd7e081a51b06cde9980cf1b60ad53b8fa1c9c276fa04797b45aff2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230711/TensorFlowLiteCMetal.xcframework.zip", checksum: "a7c69f9a9437f5e96c77865443b06b288ebe4e44eda35c3de35e9f51ce8b48f1"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
