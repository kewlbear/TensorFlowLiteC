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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210405/TensorFlowLiteC.xcframework.zip", checksum: "e51d1ff8411f9ce0657e6ebbd5fd00d17cd50e9e00e608e78b29b03c5be7e7f8"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210405/TensorFlowLiteCCoreML.xcframework.zip", checksum: "a9a82b1db04ef830d3d5691e4cd55c0e7f8576469b27b6b262b14d57b71249b9"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.1-nightly.20210405/TensorFlowLiteCMetal.xcframework.zip", checksum: "2d5fa956dbb3f21fb46800e8ccb4640e8bc8d9cde46b19bbc91f91b2410151ec"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
