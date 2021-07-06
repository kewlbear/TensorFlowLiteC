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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210705/TensorFlowLiteC.xcframework.zip", checksum: "f2eaa1919327ed599b01d5a93d83dc9c30455e581aff93beb7f32975fe86a685"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210705/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d23a967fbeb500674741439eac9c55066deae4f83ae6506bf5bd34e003265af3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210705/TensorFlowLiteCMetal.xcframework.zip", checksum: "724217dc34b75b2f7a59061b842ab11f99ef9565ccefb577c2bbffbe0c80eb4a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
