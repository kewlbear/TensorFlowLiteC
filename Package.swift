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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240802/TensorFlowLiteC.xcframework.zip", checksum: "3e89fd26289dbfd965414dae5d95162aa70a78839397671deeb8f958fbf33fbd"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240802/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d31a2c34b841ca061f4ae6bf212b348448ca55d9a3ab8883c97c02fa4585e781"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240802/TensorFlowLiteCMetal.xcframework.zip", checksum: "7978c80ee08f60d9e13d20961be5e968adb355e56de650b0403c804958017128"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
