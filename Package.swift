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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211018/TensorFlowLiteC.xcframework.zip", checksum: "a521acfa42713da072be4fcfe0dba9c23a51c03b4f43e0b1e362cc572d1adf95"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211018/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5c3c48390859c24d6bc40def50d2834fc7614ca7e59fbf6fce6f96de3edb047c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20211018/TensorFlowLiteCMetal.xcframework.zip", checksum: "d301711204fd61dfeeed2adfe3d5331503dce525f0c2dbc5780e0ddb447bf1d3"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
