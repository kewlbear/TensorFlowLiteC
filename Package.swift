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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221002/TensorFlowLiteC.xcframework.zip", checksum: "01136ab07bcf27f25d7813df363490b293c6d3bfe7e4c19e49cea105fc1a835b"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221002/TensorFlowLiteCCoreML.xcframework.zip", checksum: "fc713f06ff144c33d60f1fd9e0f7ead9993a57e34ba691d7ea04714dc2f60890"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221002/TensorFlowLiteCMetal.xcframework.zip", checksum: "e3beffa4b50e1f9230eb3fd71d5787a6fa6c6298d6b158a45a5e6947a809bd6e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
