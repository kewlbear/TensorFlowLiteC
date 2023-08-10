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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230809/TensorFlowLiteC.xcframework.zip", checksum: "0ffdd66b2e15d2c999853b246753bbfaff3296d2405d05d5b54af3f05c5072a2"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230809/TensorFlowLiteCCoreML.xcframework.zip", checksum: "4889642d297056f4456a8d9809b27f5da55a12b3f3bd1ea2e0a47255fab98933"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230809/TensorFlowLiteCMetal.xcframework.zip", checksum: "edebf86f7f8b7e73a09239a17b54046122cf5f739fad425dcdc8ea0e3a7b6a4e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
