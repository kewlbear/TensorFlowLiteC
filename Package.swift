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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230918/TensorFlowLiteC.xcframework.zip", checksum: "66f41ae931b51dfba60cb08d1521f6881fa1242f6510b55ec10f9744b0b6157a"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230918/TensorFlowLiteCCoreML.xcframework.zip", checksum: "7c9e8d712615d103bca49eb3d7014128264ffa690f3d1b328b4e3f9a7d878156"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20230918/TensorFlowLiteCMetal.xcframework.zip", checksum: "9dd7c987f6ea66ac60934d71ef0f129fd79af9c14c4bf47568571e268862dc6a"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
