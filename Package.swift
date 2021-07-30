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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210729/TensorFlowLiteC.xcframework.zip", checksum: "7f329518c63b94f630eb49a8705a6192c165dfd823163a30298e3b3656234ec2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210729/TensorFlowLiteCCoreML.xcframework.zip", checksum: "55af38de82fac71d3b50a2eef197cfbec1487808e02210899a25e9ce7073d8ae"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210729/TensorFlowLiteCMetal.xcframework.zip", checksum: "5d4943daeac514819dc8168f221c23dfa33f5a7f07d03d115cd712dd3c637ff0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
