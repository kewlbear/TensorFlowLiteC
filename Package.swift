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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230704/TensorFlowLiteC.xcframework.zip", checksum: "169706d2f3d7c107e86e247c7473ef597dfa1450f8a02c5ea8f46afcb717ec71"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230704/TensorFlowLiteCCoreML.xcframework.zip", checksum: "2406c496230262aae7ac5c12806c4735a3096492885eb05667c0d73dd6821d80"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230704/TensorFlowLiteCMetal.xcframework.zip", checksum: "b6fc2a5a29cf43870fbf107892bc23473f0143c140c587bf9a45bb6bfc16689d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
