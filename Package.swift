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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241211/TensorFlowLiteC.xcframework.zip", checksum: "9dc0c6727ef3364b91663aab4ccc1e9cd0e1d1656da0c1b734ff8b882781eb20"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241211/TensorFlowLiteCCoreML.xcframework.zip", checksum: "66dbcbe6e1f31930132f150fece8f427ff748f56d468329c50159964bb901841"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241211/TensorFlowLiteCMetal.xcframework.zip", checksum: "8c3d518f8a40b1b7fbe699fd5b92bde6925941c72f5d59dc89b864d09f8e40f2"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
