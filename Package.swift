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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240303/TensorFlowLiteC.xcframework.zip", checksum: "0b4a86664e2d157a5f9b1360a67c9af6cadee73c39fa9695c0f8cf19207b235d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240303/TensorFlowLiteCCoreML.xcframework.zip", checksum: "228d7d0c6975157145b934a53fdd4db3bca693d3a4047fe58d77f283b6d0b093"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240303/TensorFlowLiteCMetal.xcframework.zip", checksum: "8928d9e56798fa69a60980915e55346f6dc0cbde2fdfdeb730cd44be133c0b97"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
