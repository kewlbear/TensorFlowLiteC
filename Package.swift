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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230511/TensorFlowLiteC.xcframework.zip", checksum: "6023563f20ab68711c6d9cad328867e6334007006dbbe78eb9f6f94dca7968f4"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230511/TensorFlowLiteCCoreML.xcframework.zip", checksum: "efa7136e73383327e82da638dd69ef71c40e11c221c622a479e078feb9a849d6"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230511/TensorFlowLiteCMetal.xcframework.zip", checksum: "05d7d5872976e304d9ab788e8f6905c8b579a123581b83dc84c8dda4e8bef241"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
