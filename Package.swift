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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230220/TensorFlowLiteC.xcframework.zip", checksum: "3dfb9b7db4895600305d201b5d3e57613e268db40f151e8b2850075190da5707"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230220/TensorFlowLiteCCoreML.xcframework.zip", checksum: "633d130967d5b54faa579d92f88da176d12c888e03b068a7e853d5ed85e85f9e"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230220/TensorFlowLiteCMetal.xcframework.zip", checksum: "f2105f576359df88622adfa008dfb8b535f39d1ea267181f8851dca90d55d71b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
