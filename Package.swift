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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210526/TensorFlowLiteC.xcframework.zip", checksum: "3c0d0dca71679a903b7b6115a9ff3b8887b305a36d4fb32bed3f46e5fee3716d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210526/TensorFlowLiteCCoreML.xcframework.zip", checksum: "061ed18f2d7abf22bca02759c5e938d0f577fc2188efef882aeabf5ae3c23fcb"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210526/TensorFlowLiteCMetal.xcframework.zip", checksum: "e0238c0363b8b49781a2bf6c10639539ee4aa24412e2ecf0b9dce1243d976e11"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
