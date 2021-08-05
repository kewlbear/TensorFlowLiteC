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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210804/TensorFlowLiteC.xcframework.zip", checksum: "ff58a598b8e5660b77c2128718dfc973abb8a3e216eeb9d1776243c44ef5e54c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210804/TensorFlowLiteCCoreML.xcframework.zip", checksum: "6ffa6c70c9f6bd2d71e11d7fcbbb892fe2582899d3801c309d029eee2e32644c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210804/TensorFlowLiteCMetal.xcframework.zip", checksum: "ea35ded0e81ae99b46f4bb54d07e08aa575f19296f888f5aee400c0c46d8fdc0"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
