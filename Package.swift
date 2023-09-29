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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230928/TensorFlowLiteC.xcframework.zip", checksum: "7e394ebf010e6d7409de8ea09704b3ede1d57ab611138334e064b9d25dffc074"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230928/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a8fcd07b04e1b254df6b9c7b9fce64dbddfba37636049cecf715760c5ab279b2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230928/TensorFlowLiteCMetal.xcframework.zip", checksum: "078ff3473aee2880dbaf6442a46d76c67014c1082afc6ba0a10946e230af0d3b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
