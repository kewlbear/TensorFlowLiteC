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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240427/TensorFlowLiteC.xcframework.zip", checksum: "e1987f0152fa9204c1ef40d1188c9bbc8863423782f0236d4e99095e4aed4416"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240427/TensorFlowLiteCCoreML.xcframework.zip", checksum: "b8c2cb7f7f92b7d462b4adf09a470fdbbb267f9899ccf3103ed2708b5146d5d7"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240427/TensorFlowLiteCMetal.xcframework.zip", checksum: "2d1103196a7083820d23d2a4ba01c43630816e451abbdbdc3e5c8ce7e45690f7"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
