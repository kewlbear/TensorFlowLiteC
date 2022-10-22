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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221021/TensorFlowLiteC.xcframework.zip", checksum: "e301600bbbb846c05e22b8d264537817cc7c720d579ce824c33e958359d9648e"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221021/TensorFlowLiteCCoreML.xcframework.zip", checksum: "d3dc3a0e3e5851463dca091c5f85c1d2be03879627aa69c2c85754c0e9c7e781"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221021/TensorFlowLiteCMetal.xcframework.zip", checksum: "f0787f9b48e0e46d2da0d5c9210208950f922802cbe7328df8c87bc82493fbd2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
