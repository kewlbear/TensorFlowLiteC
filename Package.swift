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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230219/TensorFlowLiteC.xcframework.zip", checksum: "7a02a538526a50516a1d2980e0f0be20798d16f5eb824104fec9ff829752b94b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230219/TensorFlowLiteCCoreML.xcframework.zip", checksum: "cfdf361e98fbee30f931be92304c8646779cf66efa6760685db439f798263c73"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230219/TensorFlowLiteCMetal.xcframework.zip", checksum: "4272f33007c8b63a62398f997c37c290450893e0d4b8b5887b841666800fc913"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
