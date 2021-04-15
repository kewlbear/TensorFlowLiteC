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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210414/TensorFlowLiteC.xcframework.zip", checksum: "6912c2bfcea7e64368f7ce2abd7c5d84f72479b6f1d34fc8c0b04dae862be531"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210414/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cbb67e8029212e235558d9b888e18494240832025431415f61c2508e1324806d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210414/TensorFlowLiteCMetal.xcframework.zip", checksum: "e1e3bf490297322e371c8cbb175e0556bb04381a3e95434eb7cbfc284f1c5545"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
