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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210921/TensorFlowLiteC.xcframework.zip", checksum: "bc33738bb238f360b0a55eb87ab8389234f42630a6ccedcec10c629b99e4fc62"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210921/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1ef6cd1c1c698da2b1e04dd21f803fb37c279d1ee58f1966a39f6a7d8a3f7181"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210921/TensorFlowLiteCMetal.xcframework.zip", checksum: "4ea82c3422ec7a60d96c941cffc1949f670b802d5b10fb344f9d06624409c7fe"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
