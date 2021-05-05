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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210504/TensorFlowLiteC.xcframework.zip", checksum: "1bb430992b1cbf8ee9aef8287f97bba573e5bc3d546ccffd63d3eb34cc8dcbf6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210504/TensorFlowLiteCCoreML.xcframework.zip", checksum: "39b2f8aedf6fe75eed898ca8655879183110dfb4b50d448ca8dbba5c5b648c7b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210504/TensorFlowLiteCMetal.xcframework.zip", checksum: "d20b6b4519e783e3b2b34a6aebec08bcd9b1386b173c9a11f789c99021f80a91"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
