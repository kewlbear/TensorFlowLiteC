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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210826/TensorFlowLiteC.xcframework.zip", checksum: "35b8995f064371fa407f15d589dc235a712a2fcdbc5dc497685443788459804a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210826/TensorFlowLiteCCoreML.xcframework.zip", checksum: "dd8e7da52c199fea84a61cd3d7e7c2fa237de13e3aeaf38f86dc403515d609dc"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210826/TensorFlowLiteCMetal.xcframework.zip", checksum: "2cbb26b4125941d98bb477578b6c101126176438cd9034f7edb05467bab092ee"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
