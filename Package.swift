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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221120/TensorFlowLiteC.xcframework.zip", checksum: "52c0f45d278aaee510c40a45909be406f88b449d7b439d790d9cdcc44bc38c6c"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221120/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ea488c8b9bb88bd27142b9d50ec0803830581dcc37dda13b4f7eca9c87d9d7af"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221120/TensorFlowLiteCMetal.xcframework.zip", checksum: "4c1e8c7de978071917b3f27897c6bd3f27da8cf56085f00e13ed24ef944fde28"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
