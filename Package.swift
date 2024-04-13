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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240412/TensorFlowLiteC.xcframework.zip", checksum: "f1c238adcfb8b5a183fb9cade594af41df3f56d1438aea0c89c263f1ce05d09d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240412/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e0cc85490a87334d7010330199e92cba5b1b58dd5475d8bef171dafd77614e18"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240412/TensorFlowLiteCMetal.xcframework.zip", checksum: "317ce08469cd41f0fc6c09b48cbb35ca66304bcc5ad1f7c0261ff50a78cc7d0b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
