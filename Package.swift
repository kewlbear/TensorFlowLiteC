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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230601/TensorFlowLiteC.xcframework.zip", checksum: "33eaeed8164f30037db15aedb3af64faf114e245292bee7c7f80d83c4951042b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230601/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c5f71341f93771eea5bf3a177095a3684e998047589909bdc825aa6d04f83471"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230601/TensorFlowLiteCMetal.xcframework.zip", checksum: "724fbb478821b2eecf2cd0f78cf54aafade57ec13142c8ff40c79630aba032c4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
