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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240211/TensorFlowLiteC.xcframework.zip", checksum: "76b2da6135df0b7bb2350e63345e6d9c8b0c060ab5e29a96203c8baeeb7d4cd2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240211/TensorFlowLiteCCoreML.xcframework.zip", checksum: "8e4c9cc35a21e2980a43668ade063dce169a23c5ddc580de6872896488746645"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240211/TensorFlowLiteCMetal.xcframework.zip", checksum: "d150f26e8efdb50cb3408fdbdf065ece58cbde7f17e09abcb60a714e1f1f642a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
