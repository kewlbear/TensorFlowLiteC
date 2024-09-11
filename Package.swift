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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240910/TensorFlowLiteC.xcframework.zip", checksum: "472ba1eaac69139926f9a56783dda92f50efff5bb152596f7957533b6f229e58"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240910/TensorFlowLiteCCoreML.xcframework.zip", checksum: "60a4c9ee0e4ffc8be025eede573edc1ab5a44d5166be4f0fd60ac6b327463240"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20240910/TensorFlowLiteCMetal.xcframework.zip", checksum: "9621d3268e10c14c61338027dcbf8d74f9c1fe329addeb2ede48530a8f4a8e2d"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
