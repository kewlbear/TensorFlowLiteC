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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250601/TensorFlowLiteC.xcframework.zip", checksum: "d1d4d0e3bb7e61a2405b35194b4ae5d886d6dab8a71ba51bf2cca1644ea40c8a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250601/TensorFlowLiteCCoreML.xcframework.zip", checksum: "49b248ae5304c562cf9091e61dd2269992a47e246250fef107b6da5334976277"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20250601/TensorFlowLiteCMetal.xcframework.zip", checksum: "a0be80907cb42f36d7364b131a23556d54fd0bfe81eafad27e7d35b83f3f71db"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
