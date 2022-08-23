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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220822/TensorFlowLiteC.xcframework.zip", checksum: "209d12ad706921028fb025c2278415e1c93fbaca2dbfce8019ca0af89830b846"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220822/TensorFlowLiteCCoreML.xcframework.zip", checksum: "0c96f8d58693ea6310134518f789a26c412106b518df809bbdbcb5365e172c1c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20220822/TensorFlowLiteCMetal.xcframework.zip", checksum: "9b89b09e4dc959dc8d6b9d012bdd59cf98e84db0bea19013e518c2cd5034afe4"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
