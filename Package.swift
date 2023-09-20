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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230919/TensorFlowLiteC.xcframework.zip", checksum: "a6a05874dbc717f5e66bbf7f87a81cb67eb5361ea79e2eacedacdfaeb3610b2a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230919/TensorFlowLiteCCoreML.xcframework.zip", checksum: "ad7bb2d016d8b9cc42f7afe380797c326a8ce37e2fe140f5e7dd1f4aad69f4d2"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230919/TensorFlowLiteCMetal.xcframework.zip", checksum: "6c9ed2ad0402cbfa6850b7223c40aa93c17fb2145472948fc9b39fa822594989"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
