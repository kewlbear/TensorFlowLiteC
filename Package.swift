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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241002/TensorFlowLiteC.xcframework.zip", checksum: "174672b64f2706131746ed70ad277e7370c67d088af59cfa02c465812250bf4d"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241002/TensorFlowLiteCCoreML.xcframework.zip", checksum: "bd9153a7b05d42dab06f242752892e4b0356d42901b8f4545f3d254b3ddfc29d"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241002/TensorFlowLiteCMetal.xcframework.zip", checksum: "5ffe9deb844d0852f724816411cda8ac7bdf073535389b74c8c25b7bbb593835"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
