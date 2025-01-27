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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250126/TensorFlowLiteC.xcframework.zip", checksum: "a6b18270553c6153b2ed32f70f9255c3e25c76d353493aef4aa525f4602882f6"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250126/TensorFlowLiteCCoreML.xcframework.zip", checksum: "304f4d498227dd33cbbafe5a1e37e468cd36ab9776ec13de1bc79e3d6cfa9a87"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250126/TensorFlowLiteCMetal.xcframework.zip", checksum: "d253913ebe88ec02fd773c0cccafca2abc6f6524bcf654b0e8845f757e8d6cdc"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
