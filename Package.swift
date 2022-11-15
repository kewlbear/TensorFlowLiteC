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
        .binaryTarget(name: "TensorFlowLiteC", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221114/TensorFlowLiteC.xcframework.zip", checksum: "6ac5a4fc2d38d4214e5688ebb0291a7d7cc8cac32d9af945fb17c3c4dc8baf62"),
        .binaryTarget(name: "TensorFlowLiteCCoreML", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221114/TensorFlowLiteCCoreML.xcframework.zip", checksum: "1b0a6465032ab90cad9df499e034e6bec01dea95d3d4891654e17b0ba42d4540"),
        .binaryTarget(name: "TensorFlowLiteCMetal", url: "https://github.com/kewlbear/TensorFlowLiteC/releases/download/0.0.20221114/TensorFlowLiteCMetal.xcframework.zip", checksum: "ccfa361dc89d1e2e4fcece67d4c04af272831ca25338ea34b76f1eb0d432ff70"),
        .target(name: "Link",
                linkerSettings: [.linkedLibrary("c++")]),
    ]
)
