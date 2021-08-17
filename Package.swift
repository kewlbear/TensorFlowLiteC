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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210816/TensorFlowLiteC.xcframework.zip", checksum: "8a3ec8d352e7c90649246d1629140fb0906a773e418308ca5d85c35e7955c6ec"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210816/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d5cf070971bbc82157b6030122f48579af8f609ab3e28ae46af49d0e97821c39"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210816/TensorFlowLiteCMetal.xcframework.zip", checksum: "21aed1afb88cf74fb9a2bb644f1e3f040dd23f1a7404e46e74199ced33bd0953"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
