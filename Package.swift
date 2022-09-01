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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220831/TensorFlowLiteC.xcframework.zip", checksum: "091c0c427679fcdb4ca3ed055e211e667f035ab4978996c56552e97869dcf5f1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220831/TensorFlowLiteCCoreML.xcframework.zip", checksum: "f1660e93de20d45f21a43a220e70b1b695b1fc57c91a0aef009a24bd5495f41b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220831/TensorFlowLiteCMetal.xcframework.zip", checksum: "5bc6a28af32eee72e63a09feafb27d117cc7b61f1decc07d02918ca0d919cb75"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
