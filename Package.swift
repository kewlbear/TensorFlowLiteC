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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211028/TensorFlowLiteC.xcframework.zip", checksum: "75a875168d64e9b25b34d9d364bb76e2eaa5a6d9c4d82f56f0228df38e4e3f46"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211028/TensorFlowLiteCCoreML.xcframework.zip", checksum: "397ed6ab30cd8cdc2c9bdaa9c0260918d1b2a170eb0dfaf24f472f5c25f6ac9b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211028/TensorFlowLiteCMetal.xcframework.zip", checksum: "47cbf81cdcb963a6627c14f917560c592e7fd6ac77a950161dcc47cc99e9d360"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
