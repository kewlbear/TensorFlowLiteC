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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241130/TensorFlowLiteC.xcframework.zip", checksum: "19bac4d82f826db9516f983e9c07b09163c3544b546e8fd7e566c69f66b53f98"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241130/TensorFlowLiteCCoreML.xcframework.zip", checksum: "30bbbe704124eccc84e65198f23a3ba0d4ee85936ff3f2efddad64cd2287faea"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20241130/TensorFlowLiteCMetal.xcframework.zip", checksum: "fec730844a9d8bf8297a0e6d72556d6cfc53e2626adbce7402f00a25919248ba"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
