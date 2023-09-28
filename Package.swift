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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230927/TensorFlowLiteC.xcframework.zip", checksum: "60d7274c37cf4b28d3dabeca973f11bfc3151c8b21f1a854173f9706fb145bee"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230927/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c24d2f072b248fc31034ac2825cd62f474029061ca3e4cf9dc128654d6cfd524"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230927/TensorFlowLiteCMetal.xcframework.zip", checksum: "7b57d41fef038b1ae3936c6cab1d67c8302e2864ca5f088396c43eb0a3e4f7d8"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
