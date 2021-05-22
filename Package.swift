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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210521/TensorFlowLiteC.xcframework.zip", checksum: "9ea21293fa95c2339f77482c87e7a43f7810059d1accefb1b8f951994230c92d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210521/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d3ea28ee726914461be286c6aae1487c1e0ca14d3c038c30d9fbb92e93979716"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20210521/TensorFlowLiteCMetal.xcframework.zip", checksum: "11b2cc7d6193bc5c5d00c8f13374787dffb2edd8a09c0f58697c07ad3e78a2fc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
