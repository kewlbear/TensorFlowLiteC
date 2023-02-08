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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230207/TensorFlowLiteC.xcframework.zip", checksum: "264e01e2179ecdc9518bb63f602af150204e5963a77c4258ef9d1dfc08e418d1"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230207/TensorFlowLiteCCoreML.xcframework.zip", checksum: "5a8fda3b51038ba9ae3c47dba429bf06c25046d3682bfb954e4034eedc418d15"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230207/TensorFlowLiteCMetal.xcframework.zip", checksum: "642f9ccff68ba2d9520510a9e50105b45085db8f136d7fd993587ccb16cdc26e"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
