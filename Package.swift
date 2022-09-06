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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220905/TensorFlowLiteC.xcframework.zip", checksum: "e3892a448ba848b2cf2cb82f2bd9ad187c0d1aad1803f4c49fa151e7d83bd4b7"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220905/TensorFlowLiteCCoreML.xcframework.zip", checksum: "87c98f5453ddedaa76ac91ece96ec627ec4f4933d90272726c4f8a6f8a4aea6e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220905/TensorFlowLiteCMetal.xcframework.zip", checksum: "9f99e2e1ab84eda8b56bf2c7aba8146b99d6b3e94e9c776d3baf52284acb29c5"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
