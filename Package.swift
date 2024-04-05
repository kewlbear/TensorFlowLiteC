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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240404/TensorFlowLiteC.xcframework.zip", checksum: "8baff0778295acb9d715426fb509aa32e75644d7146e158e241f2f2aeebd4740"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240404/TensorFlowLiteCCoreML.xcframework.zip", checksum: "c06a9a4db38882049ae5a5d082895e1239f8bb601fd9aedd3bc90725e4c221d3"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240404/TensorFlowLiteCMetal.xcframework.zip", checksum: "df858648ba05b34cc52ad1051a042eb8c886e0f48d260d3d04a152e9a1bbc7b6"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
