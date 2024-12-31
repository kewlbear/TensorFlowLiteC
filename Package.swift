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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241230/TensorFlowLiteC.xcframework.zip", checksum: "d606b6ef381ac6e7e9650e2c3dcb746c4d2bc60e6a4f6f1f9995a13cc2091d9e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241230/TensorFlowLiteCCoreML.xcframework.zip", checksum: "eb642e3f54d733c29d6071967bef0084f90c782ba62a134c21f124c7101c912d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241230/TensorFlowLiteCMetal.xcframework.zip", checksum: "13503b44f32a8d78a46a99b775bd16c6c59cc9fc8e307cd56c208a3006ec400f"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
