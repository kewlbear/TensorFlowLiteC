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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240902/TensorFlowLiteC.xcframework.zip", checksum: "634afe033385f5716bd40f0e6e3466555f0d7e5e706eea1c8d15e670fd8f9e2e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240902/TensorFlowLiteCCoreML.xcframework.zip", checksum: "de616ee596f37e094f34d145bbb6807d589fc8c1c4be51f6821ee0e57b17e35c"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240902/TensorFlowLiteCMetal.xcframework.zip", checksum: "aa469c26bff51836be82e8d961308bd2954530136f3e7dd28f8b6172d2e23571"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
