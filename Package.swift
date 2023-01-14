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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230113/TensorFlowLiteC.xcframework.zip", checksum: "aa54a14c216feab4cab7631ed1cbe2006743885eceb389e4344fcf6718f290be"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230113/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c67f83673bec1331d2fdef8c2b999f9cbcb266326e277236a61307e9ea593203"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230113/TensorFlowLiteCMetal.xcframework.zip", checksum: "22ad57467db8529d8aca880605f1ffe09585ae8c21f845f32446b158af4aeb1e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
