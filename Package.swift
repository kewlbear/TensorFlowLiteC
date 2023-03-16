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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230315/TensorFlowLiteC.xcframework.zip", checksum: "70f221dc8ee21f89c774ec2c011d63cbe7fef81ac42035a84107905cdb0fe8d8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230315/TensorFlowLiteCCoreML.xcframework.zip", checksum: "47f53bdb01eee4c8bc50de6fd1ba368e8139ce36510d7d29738cf74614c4c2fe"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230315/TensorFlowLiteCMetal.xcframework.zip", checksum: "99d3a188727079dbba022c68d51b50c2ea48e529b785b0dd483ae5874a652759"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
