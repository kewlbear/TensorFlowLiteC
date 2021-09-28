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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210927/TensorFlowLiteC.xcframework.zip", checksum: "694eeccbea4b629792ac9c2130dbbe51f6211c16945c252faefdf3fa15e2f279"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210927/TensorFlowLiteCCoreML.xcframework.zip", checksum: "59d093900ca367a3a8a3ae07bab66a528eb786a3f5b210f657ee051113a9220e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210927/TensorFlowLiteCMetal.xcframework.zip", checksum: "625fd8492dabfb694a80071f0ebfa015daf5e82e1a88f1ab9f4900221d0f15c2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
