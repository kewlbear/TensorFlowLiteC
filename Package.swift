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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211001/TensorFlowLiteC.xcframework.zip", checksum: "f72ea457bbeb3dcae449f026d41fd908f630b363111eb1e049ac4c9187554894"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211001/TensorFlowLiteCCoreML.xcframework.zip", checksum: "e8886e56aadb2609ebc060e607a90dbeecc4817fcab07811cc9d6b3016dcc71b"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211001/TensorFlowLiteCMetal.xcframework.zip", checksum: "328aa2ace54a8415e660a47e18eb82d719e2eb872e202288af83d5e0f601fc6b"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
